<?php

require_once('api/Turbo.php');

class BannersAdmin extends Turbo
{
    public function fetch()
    {
        if ($this->request->method('post')) {
            // Actions with selected
            $ids = $this->request->post('check');
            if (is_array($ids)) {
                switch ($this->request->post('action')) {
                    case 'disable': {
                            foreach ($ids as $id) {
                                $this->banners->update_banner($id, array('visible' => 0));
                            }
                            break;
                        }
                    case 'enable': {
                            foreach ($ids as $id) {
                                $this->banners->update_banner($id, array('visible' => 1));
                            }
                            break;
                        }
                    case 'delete': {
                            foreach ($ids as $id) {
                                $this->banners->delete_banner($id);
                            }
                            break;
                        }
                }
            }

            // Sorting
            $positions = $this->request->post('positions');
            $ids = array_keys($positions);
            sort($positions);
            foreach ($positions as $i => $position) {
                $this->banners->update_banner($ids[$i], array('position' => $position));
            }
        }

        $banners = $this->banners->get_banners();
        if ($banners) {
            $articles_categories = $this->articles_categories->get_articles_categories();
            $projects_categories = $this->projects_categories->get_projects_categories();
            $pages = $this->pages->get_pages();
            foreach ($banners as $banner) {
                $banner->articles_category_selected = explode(",", $banner->articles_categories);
                $banner->projects_category_selected = explode(",", $banner->projects_categories);
                $banner->page_selected = explode(",", $banner->pages);
                foreach ($articles_categories as $c) {
                    if (in_array($c->id, $banner->articles_category_selected)) {
                        $banner->articles_category_show[] = $c;
                    }
                }
                foreach ($projects_categories as $c) {
                    if (in_array($c->id, $banner->projects_category_selected)) {
                        $banner->projects_category_show[] = $c;
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
