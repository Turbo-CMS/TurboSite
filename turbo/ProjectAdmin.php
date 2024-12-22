<?php

require_once 'api/Turbo.php';

class ProjectAdmin extends Turbo
{
	public function fetch()
	{
		$images = [];
		$relatedProjects = [];
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

			if (is_array($this->request->post('related_projects'))) {
				foreach ($this->request->post('related_projects') as $p) {
					$rp[$p] = new stdClass;
					$rp[$p]->project_id = $project->id;
					$rp[$p]->related_id = $p;
				}

				$relatedProjects = $rp;
			}

			if (($a = $this->projects->getProject($project->url)) && $a->id != $project->id) {
				$this->design->assign('message_error', 'url_exists');
				$images = $this->projects->getImages(array('project_id' => $project->id));
			} else {
				if (empty($project->id)) {
					if ($project->category_id > 0) {
						$this->db->query("UPDATE __projects_categories SET last_modified=NOW() WHERE id=?", $project->category_id);
					}

					$project->id = $this->projects->addProject($project);
					$project = $this->projects->getProject($project->id);

					$this->design->assign('message_success', 'added');
				} else {
					$this->db->query("SELECT category_id FROM __projects WHERE id=?", $project->id);

					$c_ids = $this->db->results('category_id');

					if (!empty($c_ids)) {
						$this->db->query("UPDATE __projects_categories SET last_modified=NOW() WHERE id IN(?@)", $c_ids);
					}

					$this->projects->updateProject($project->id, $project);
					$project = $this->projects->getProject($project->id);

					$this->design->assign('message_success', 'updated');
				}

				if ($project->id) {
					$images = (array) $this->request->post('images');
					$currentImages = $this->projects->getImages(array('project_id' => $project->id));

					foreach ($currentImages as $image) {
						if (!in_array($image->id, $images)) {
							$this->projects->deleteImage($image->id);
						}
					}

					if ($images = $this->request->post('images')) {
						$i = 0;

						foreach ($images as $id) {
							$this->projects->updateImage($id, array('position' => $i));
							$i++;
						}
					}

					if ($images = $this->request->files('images')) {
						for ($i = 0; $i < count($images['name']); $i++) {
							if ($imageName = $this->image->uploadImage($images['tmp_name'][$i], $images['name'][$i])) {
								$this->projects->addImage($project->id, $imageName);
							} else {
								$this->design->assign('error', 'error uploading image');
							}
						}
					}
					if ($images = $this->request->post('images_urls')) {
						foreach ($images as $url) {
							if (!empty($url) && $url != 'http://' && strstr($url, '/') !== false) {
								$this->projects->addImage($project->id, $url);
							} elseif ($droppedImages = $this->request->files('dropped_images')) {
								$key = array_search($url, $droppedImages['name']);

								if ($key !== false && $imageName = $this->image->uploadImage($droppedImages['tmp_name'][$key], $droppedImages['name'][$key])) {
									$this->projects->addImage($project->id, $imageName);
								}
							}
						}
					}

					$images = $this->projects->getImages(['project_id' => $project->id]);

					$query = $this->db->placehold("DELETE FROM __related_projects WHERE project_id=?", $project->id);

					$this->db->query($query);

					if (is_array($relatedProjects)) {
						$pos = 0;

						foreach ($relatedProjects  as $i => $relatedProject) {
							$this->projects->addRelatedProject($project->id, $relatedProject->related_id, $pos++);
						}
					}
				}
			}
		} else {
			$project->id = $this->request->get('id', 'integer');
			$project = $this->projects->getProject((int) $project->id);

			if ($project && $project->id) {
				$images = $this->projects->getImages(['project_id' => $project->id]);
				$relatedProjects = $this->projects->getRelatedProjects(['project_id' => $project->id]);
			} else {
				$project = new stdClass();
				$project->id = null;
				$project->name = '';
				$project->url = '';
				$project->visible = 1;
				$project->image = null;
				$project->category_id = null;
				$project->date = null;
				$project->client = '';
				$project->site = '';
				$project->type = '';
				$project->meta_title = '';
				$project->meta_keywords = '';
				$project->meta_description = '';
				$project->annotation = '';
				$project->text = '';
			}
		}

		if (!empty($relatedProjects)) {

			$rProjects = [];

			foreach ($relatedProjects as &$rP) {
				$rProjects[$rP->related_id] = &$rP;
			}

			$tempProjects = $this->projects->getProjects(['id' => array_keys($rProjects)]);

			foreach ($tempProjects as $tempProject) {
				$rProjects[$tempProject->id] = $tempProject;
			}

			$relatedProjectsImages = $this->projects->getImages(['project_id' => array_keys($rProjects)]);

			foreach ($relatedProjectsImages as $image) {
				$rProjects[$image->project_id]->images[] = $image;
			}
		}

		if (empty($project)) {
			$project = new stdClass;
			$project->date = date($this->settings->date_format, time());
		}

		$this->design->assign('project_images', $images);
		$this->design->assign('project', $project);
		$this->design->assign('related_projects', $relatedProjects);

		$projectsCategories = $this->projectsCategories->getProjectsCategoriesTree();
		$this->design->assign('projects_categories', $projectsCategories);

		return $this->design->fetch('project.tpl');
	}
}
