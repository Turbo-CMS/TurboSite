<?php

require_once 'api/Turbo.php';

class BannersAdmin extends Turbo
{
	public function fetch()
	{
		if ($this->request->method('post')) {
			$ids = $this->request->post('check');

			if (is_array($ids)) {
				switch ($this->request->post('action')) {
					case 'disable':
						foreach ($ids as $id) {
							$this->banners->updateBanner($id, ['visible' => 0]);
						}
						break;

					case 'enable':
						foreach ($ids as $id) {
							$this->banners->updateBanner($id, ['visible' => 1]);
						}
						break;

					case 'delete':
						foreach ($ids as $id) {
							$this->banners->deleteBanner($id);
						}
						break;
				}
			}

			$positions = $this->request->post('positions');
			$ids = array_keys($positions);

			sort($positions);

			foreach ($positions as $i => $position) {
				$this->banners->updateBanner($ids[$i], ['position' => $position]);
			}
		}

		$banners = $this->banners->getBanners();

		if ($banners) {
			$articlesCategories = $this->articlesCategories->getArticlesCategories();
			$projectsCategories = $this->projectsCategories->getProjectsCategories();
			$pages = $this->pages->getPages();

			foreach ($banners as $banner) {
				$banner->articles_category_selected = explode(',', $banner->articles_categories);
				$banner->projects_category_selected = explode(",", $banner->projects_categories);
				$banner->page_selected = explode(',', $banner->pages);

				foreach ($articlesCategories as $c) {
					if (isset($c->id)) {
						if (in_array($c->id, $banner->articles_category_selected)) {
							$banner->articles_category_show[] = $c;
						}
					}
				}

				foreach ($projectsCategories as $c) {
					if (isset($c->id)) {
						if (in_array($c->id, $banner->projects_category_selected)) {
							$banner->projects_category_show[] = $c;
						}
					}
				}

				foreach ($pages as $p) {
					if (in_array($p->id, $banner->page_selected)) {
						$banner->page_show[] = $p;
					}
				}
			}
		}

		$this->design->assign('banners', $banners);

		return $this->design->fetch('banners.tpl');
	}
}
