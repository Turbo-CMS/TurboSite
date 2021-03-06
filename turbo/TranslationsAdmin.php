<?PHP

require_once('api/Turbo.php');

class TranslationsAdmin extends Turbo
{

  public function fetch()
  {      
        $admin_theme = $this->settings->admin_theme;
        if ($admin_theme) {
            $locked_theme = is_file('design/' . $admin_theme . '/locked');
        } else {
            $locked_theme = is_file('design/' . $this->settings->theme . '/locked');
        }
        $this->design->assign('locked_theme', $locked_theme);

	   	// Обработка действий
	  	if(!$locked_theme && $this->request->method('post'))
	  	{
			// Действия с выбранными
			$ids = $this->request->post('check');

			if(is_array($ids))
			switch($this->request->post('action'))
			{
			    case 'delete':
			    {
				    foreach($ids as $id)
						$this->languages->delete_translation($id);
			        break;
			    }
			}

	 	}

        /*
        $languages    = $this->languages->get_languages();
	  	$translations = $this->languages->get_translations();

        if($translations){
            foreach($translations as $t){
                foreach($languages as $l)
                    $lang[$l->label] = $t->
            }
        }
        */

        $debug='';
            if($debug){
            print '<div style="background-color: #FFFFCC; position: absolute; z-index: 99" align="left"><pre>';
            print_r($category);
            print '</pre></div><br />';
        }
		
		
		// Отображение
		$filter = array();
		$filter['page'] = max(1, $this->request->get('page', 'integer')); 		
		$filter['limit'] = 40;

		// Поиск
		$keyword = $this->request->get('keyword', 'string');
		if(!empty($keyword))
		{
			$filter['keyword'] = $keyword;
			$this->design->assign('keyword', $keyword);
		}
		
		// Сортировка переводов, сохраняем в сессии, чтобы текущая сортировка не сбрасывалась
		if($sort = $this->request->get('sort', 'string'))
			$_SESSION['translations_sort'] = $sort;		
		if (!empty($_SESSION['translations_sort']))
			$filter['sort'] = $_SESSION['translations_sort'];			
		else
			$filter['sort'] = 'label';			
		$this->design->assign('sort', $filter['sort']);

		$translations_count = $this->languages->count_translations($filter);
		// Показать все страницы сразу
		if($this->request->get('page') == 'all')
			$filter['limit'] = $translations_count;	
		
		$translations = $this->languages->get_translations($filter, true);

		$this->design->assign('pages_count', ceil($translations_count/$filter['limit']));
		$this->design->assign('current_page', $filter['page']);

	 	$this->design->assign('translations', $translations);
		$this->design->assign('translations_countt', $translations_count);
		return $this->design->fetch('translations.tpl');

  }

}