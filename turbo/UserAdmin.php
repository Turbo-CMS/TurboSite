<?PHP
require_once('api/Turbo.php');

class UserAdmin extends Turbo
{	
	public function fetch()
	{
		$user = new stdClass;
		if($this->request->method('POST'))  
		{
			$user->id = $this->request->post('id', 'integer');
			$user->enabled = $this->request->post('enabled');
			$user->name = $this->request->post('name');
			$user->email = $this->request->post('email');
            $user->phone = $this->request->post('phone');
	
			## Не допустить одинаковые email пользователей.
			if(empty($user->name))
			{			
				$this->design->assign('message_error', 'empty_name');
			}
			elseif(empty($user->email))
			{			
				$this->design->assign('message_error', 'empty_email');
			}
			elseif(($u = $this->users->get_user($user->email)) && $u->id!=$user->id)
			{			
				$this->design->assign('message_error', 'login_existed');
			}
			else
			{
				$user->id = $this->users->update_user($user->id, $user);
  				$this->design->assign('message_success', 'updated');
   	    		$user = $this->users->get_user(intval($user->id));
			}
		}
		
		$id = $this->request->get('id', 'integer');
		if(!empty($id))
			$user = $this->users->get_user(intval($id));			

		if(!empty($user))
		{
			$this->design->assign('user', $user);
		}
		
 	  	return $this->design->fetch('user.tpl');
	}
	
}