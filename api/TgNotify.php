<?php

class TgNotify extends Turbo
{
	/**
	 * Exec Curl Request
	 */
	private function execCurlRequest($handle)
	{
		$response = curl_exec($handle);

		if ($response === false) {
			$errno = curl_errno($handle);
			$error = curl_error($handle);
			error_log("Curl returned error $errno: $error\n");
			curl_close($handle);
			return false;
		}

		$httpCode = (int) curl_getinfo($handle, CURLINFO_HTTP_CODE);
		curl_close($handle);

		if ($httpCode >= 500) {
			sleep(10);
			return false;
		} else if ($httpCode != 200) {
			$response = json_decode($response, true);

			error_log("Request has failed with error {$response['error_code']}: {$response['description']}\n");

			if ($httpCode == 401) {
				throw new Exception('Invalid access token provided');
			}

			return false;
		} else {
			$response = json_decode($response, true);

			if (isset($response['description'])) {
				error_log("Request was successfull: {$response['description']}\n");
			}

			$response = $response['result'];
		}

		return $response;
	}

	/**
	 * API Request
	 */
	public function apiRequest($method, $parameters)
	{
		if (!is_string($method)) {
			error_log("Method name must be a string\n");
			return false;
		}

		if (!$parameters) {
			$parameters = [];
		} else if (!is_array($parameters)) {
			error_log("Parameters must be an array\n");
			return false;
		}

		foreach ($parameters as $key => &$val) {
			if (!is_numeric($val) && !is_string($val)) {
				$val = json_encode($val);
			}
		}

		$url = $this->settings->tg_apiurl . $this->settings->tg_token . '/' . $method . '?' . http_build_query($parameters);
		$handle = curl_init($url);

		curl_setopt($handle, CURLOPT_RETURNTRANSFER, true);
		curl_setopt($handle, CURLOPT_CONNECTTIMEOUT, 5);
		curl_setopt($handle, CURLOPT_TIMEOUT, 60);

		return $this->execCurlRequest($handle);
	}

	/**
	 * Massege Callback
	 */
	public function messageCallback($callback_id)
	{
		if (!($callback = $this->callbacks->getCallback((int) $callback_id))) {
			return false;
		}

		$textString = '' . $this->backendTranslations->callbacks_order . '' . PHP_EOL;

		if ($callback->name) {
			$textString .= '<b>' . $this->backendTranslations->global_name . ':</b> ' . $callback->name . PHP_EOL;
		}

		if ($callback->phone) {
			$textString .= '<b>' . $this->backendTranslations->global_phone . ':</b> ' . $callback->phone . PHP_EOL;
		}

		if ($callback->message) {
			$textString .= '<b>' . $this->backendTranslations->global_message . ':</b> ' . $callback->message;
		}

		$this->apiRequest("sendMessage", ['chat_id' => $this->settings->tg_channel, 'parse_mode' => 'HTML', "text" => $textString]);
	}
}
