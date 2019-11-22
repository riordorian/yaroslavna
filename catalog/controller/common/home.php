<?php
class ControllerCommonHome extends Controller {
	public function index() {
		$this->document->setTitle($this->config->get('config_meta_title'));
		$this->document->setDescription($this->config->get('config_meta_description'));
		$this->document->setKeywords($this->config->get('config_meta_keyword'));

		if (isset($this->request->get['route'])) {
			$this->document->addLink($this->config->get('config_url'), 'canonical');
		}

		$this->load->model('catalog/information');
		$information_info = $this->model_catalog_information->getInformationByName('О нас');
		$data['description'] = htmlspecialchars_decode($information_info['description']);

		$data['column_left'] = $this->load->controller('common/column_left');
		$data['column_right'] = $this->load->controller('common/column_right');
		$data['content_top'] = $this->load->controller('common/content_top');
		$data['content_bottom'] = $this->load->controller('common/content_bottom');
		$data['footer'] = $this->load->controller('common/footer');
		$data['header'] = $this->load->controller('common/header');

		$data['categories'] = array();
		$results = $this->model_catalog_category->getCategories();
		foreach ($results as $result) {
			$data['categories'][] = array(
				'NAME' => $result['name'],
				'DESCRIPTION' => $result['description'],
				'IMAGE' => '/image/' . $result['image'],
				'SECTION_PAGE_URL' => $this->url->link('product/sections', 'category_id=' . $result['category_id'])
			);
		}

		$this->response->setOutput($this->load->view('common/home', $data));
	}
}
