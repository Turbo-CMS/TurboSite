<?php

require_once 'api/Turbo.php';

class BannerAdmin extends Turbo
{
	public function fetch()
	{
		$pages = $this->pages->getPages();
		$articlesCategories = $this->articlesCategories->getArticlesCategoriesTree();
		$projectsCategories = $this->projectsCategories->getProjectsCategoriesTree();
		$banner = new stdClass();

		if ($this->request->isMethod('post')) {
			$banner->id = $this->request->post('id', 'integer');
			$banner->group_id = trim($this->request->post('group_id', 'string'));
			$banner->name = $this->request->post('name');
			$banner->visible = $this->request->post('visible', 'boolean');
			$banner->show_all_pages = (int) $this->request->post('show_all_pages');
			$banner->pages = implode(',', $this->request->post('pages'));
			$banner->articles_categories = implode(',', $this->request->post('articles_categories'));
			$banner->projects_categories = implode(',', $this->request->post('projects_categories'));
			$banner->group_id = preg_replace('/[\s]+/ui', '', $banner->group_id);
			$banner->group_id = strtolower(preg_replace('/[^0-9a-z_]+/ui', '', $banner->group_id));

			if (($b = $this->banners->getBanner($banner->group_id)) && $b->id != $banner->id) {
				$this->design->assign('message_error', 'group_id_exists');
			} elseif (empty($banner->group_id)) {
				$this->design->assign('message_error', 'empty_group_id');
			} else {
				if (empty($banner->id)) {
					$banner->id = $this->banners->addBanner($banner);
					$banner = $this->banners->getBanner($banner->id);
					$this->design->assign('message_success', 'added');
				} else {
					$this->banners->updateBanner($banner->id, $banner);
					$banner = $this->banners->getBanner($banner->id);
					$this->design->assign('message_success', 'updated');
				}
			}

			$banner->articles_category_selected = $this->request->post('articles_categories');
			$banner->projects_category_selected = $this->request->post('projects_categories');
			$banner->brand_selected = $this->request->post('brands');
			$banner->page_selected = $this->request->post('pages');
		} else {
			$id = $this->request->get('id', 'integer');

			if (!empty($id)) {
				$banner = $this->banners->getBanner((int) $id);
				$banner->articles_category_selected = explode(',', $banner->articles_categories);
				$banner->projects_category_selected = explode(",", $banner->projects_categories);
				$banner->page_selected = explode(',', $banner->pages);
			} else {
				$banner->visible = 1;
			}
		}

		$this->design->assign('pages', $pages);
		$this->design->assign('banner', $banner);
		$this->design->assign('articles_categories', $articlesCategories);
		$this->design->assign('projects_categories', $projectsCategories);

		return $this->design->fetch('banner.tpl');
	}
}
