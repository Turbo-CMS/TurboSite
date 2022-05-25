<?php

require_once('api/Turbo.php');

class ProjectAdmin extends Turbo
{
	public function fetch()
	{
		$images = array();
		$related_projects = array();
		$project = new stdClass;
		if ($this->request->method('post')) {
			$project->id = $this->request->post('id', 'integer');
			$project->name = $this->request->post('name');
			$project->date = date('Y-m-d', strtotime($this->request->post('date')));

			$project->visible = $this->request->post('visible', 'boolean');
			$project->category_id = $this->request->post('category_id', 'integer');

			$project->url = trim($this->request->post('url', 'string'));
			$project->meta_title = $this->request->post('meta_title');
			$project->meta_keywords = $this->request->post('meta_keywords');
			$project->meta_description = $this->request->post('meta_description');

			$project->annotation = $this->request->post('annotation');
			$project->text = $this->request->post('body');

			$project->client = $this->request->post('client');
			$project->site = $this->request->post('site');
			$project->type = $this->request->post('type');

			// Related projects
			if (is_array($this->request->post('related_projects'))) {
				foreach ($this->request->post('related_projects') as $p) {
					$rp[$p] = new stdClass;
					$rp[$p]->project_id = $project->id;
					$rp[$p]->related_id = $p;
				}
				$related_projects = $rp;
			}

			// Do not allow duplicate section URLs
			if (($a = $this->projects->get_project($project->url)) && $a->id != $project->id) {
				$this->design->assign('message_error', 'url_exists');
				$images = $this->projects->get_images(array('project_id' => $project->id));
			} else {
				if (empty($project->id)) {
					// Last-Modified
					if ($project->category_id > 0) {
						$this->db->query('update __projects_categories set last_modified=now() where id=?', $project->category_id);
					}

					$project->id = $this->projects->add_project($project);
					$project = $this->projects->get_project($project->id);
					$this->design->assign('message_success', 'added');
				} else {
					// Last-Modified                    
					$this->db->query('select category_id from __projects where id=?', $project->id);
					$c_ids = $this->db->results('category_id');
					if (!empty($c_ids)) {
						$this->db->query('update __projects_categories set last_modified=now() where id in(?@)', $c_ids);
					}

					$this->projects->update_project($project->id, $project);
					$project = $this->projects->get_project($project->id);
					$this->design->assign('message_success', 'updated');
				}

				if ($project->id) {

					// Deleting images
					$images = (array)$this->request->post('images');
					$current_images = $this->projects->get_images(array('project_id' => $project->id));
					foreach ($current_images as $image) {
						if (!in_array($image->id, $images))
							$this->projects->delete_image($image->id);
					}

					// Image order
					if ($images = $this->request->post('images')) {
						$i = 0;
						foreach ($images as $id) {
							$this->projects->update_image($id, array('position' => $i));
							$i++;
						}
					}
					// Image upload
					if ($images = $this->request->files('images')) {
						for ($i = 0; $i < count($images['name']); $i++) {
							if ($image_name = $this->image->upload_image($images['tmp_name'][$i], $images['name'][$i])) {
								$this->projects->add_image($project->id, $image_name);
							} else {
								$this->design->assign('error', 'error uploading image');
							}
						}
					}
					// Downloading images from the Internet and drag-n-drop files
					if ($images = $this->request->post('images_urls')) {
						foreach ($images as $url) {
							// If not an empty address and the file is not local
							if (!empty($url) && $url != 'http://' && strstr($url, '/') !== false)
								$this->projects->add_image($project->id, $url);
							elseif ($dropped_images = $this->request->files('dropped_images')) {
								$key = array_search($url, $dropped_images['name']);
								if ($key !== false && $image_name = $this->image->upload_image($dropped_images['tmp_name'][$key], $dropped_images['name'][$key]))
									$this->projects->add_image($project->id, $image_name);
							}
						}
					}
					$images = $this->projects->get_images(array('project_id' => $project->id));

					// Related projects
					$query = $this->db->placehold('DELETE FROM __related_projects WHERE project_id=?', $project->id);
					$this->db->query($query);
					if (is_array($related_projects)) {
						$pos = 0;
						foreach ($related_projects  as $i => $related_project)
							$this->projects->add_related_project($project->id, $related_project->related_id, $pos++);
					}
				}
			}
		} else {
			$project->id = $this->request->get('id', 'integer');
			$project = $this->projects->get_project(intval($project->id));
			if ($project && $project->id) {
				// Project Images
				$images = $this->projects->get_images(array('project_id' => $project->id));
				// Related projects
				$related_projects = $this->projects->get_related_projects(array('project_id' => $project->id));
			}
		}

		if (!empty($related_projects)) {
			foreach ($related_projects as &$r_p)
				$r_projects[$r_p->related_id] = &$r_p;
			$temp_projects = $this->projects->get_projects(array('id' => array_keys($r_projects)));
			foreach ($temp_projects as $temp_project)
				$r_projects[$temp_project->id] = $temp_project;

			$related_projects_images = $this->projects->get_images(array('project_id' => array_keys($r_projects)));
			foreach ($related_projects_images as $image) {
				$r_projects[$image->project_id]->images[] = $image;
			}
		}

		if (empty($project)) {
			$project = new stdClass;
			$project->date = date($this->settings->date_format, time());
		}

		$this->design->assign('project_images', $images);
		$this->design->assign('project', $project);
		$this->design->assign('related_projects', $related_projects);

		// Categories
		$projects_categories = $this->projects_categories->get_projects_categories_tree();
		$this->design->assign('projects_categories', $projects_categories);

		return $this->design->fetch('project.tpl');
	}
}
