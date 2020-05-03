<?php
class ControllerProductSections extends Controller {
	public function index() {
		$this->load->language('product/sections');

		$this->load->model('catalog/category');

		$this->load->model('catalog/product');

		$this->load->model('tool/image');

		$data['breadcrumbs'] = array();

		$data['breadcrumbs'][] = array(
			'text' => $this->language->get('text_home'),
			'separator' => '<span>&nbsp;»&nbsp;</span>',
			'href' => $this->url->link('common/home')
		);
		
		// Set the last category breadcrumb
		$data['breadcrumbs'][] = array(
			'text' => $this->language->get('text_section_name'),
			'separator' => '<span>&nbsp;»&nbsp;</span>',
			'href' => ''
		);


		$data['footer'] = $this->load->controller('common/footer');
		$data['header'] = $this->load->controller('common/header');
		$data['print_icons'] = $this->load->controller('common/print_icons');
		$data['heading_title'] = $this->language->get('text_section_title');
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
		
		$this->response->setOutput($this->load->view('product/sections', $data));
	}
}
