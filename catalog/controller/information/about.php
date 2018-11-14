<?php
class ControllerInformationAbout extends Controller {
	public function index() {
		$this->load->language('information/about');
		$this->load->model('catalog/information');

		$this->document->setTitle($this->language->get('heading_title'));

		$data['breadcrumbs'] = array();

		$data['breadcrumbs'][] = array(
			'text' => $this->language->get('text_home'),
			'separator' => '<span>&nbsp;»&nbsp;</span>',
			'href' => '/'
		);

		$data['breadcrumbs'][] = array(
			'text' => $this->language->get('heading_title'),
			'separator' => '<span>&nbsp;»&nbsp;</span>',
			'href' => ''
		);

		$data['heading_title'] = $this->language->get('heading_title');

		$data['informations'] = array();

		$information_info = $this->model_catalog_information->getInformationByName('О нас');
		$data['description'] = htmlspecialchars_decode($information_info['description']);

		$data['footer'] = $this->load->controller('common/footer');
		$data['header'] = $this->load->controller('common/header');

		$this->response->setOutput($this->load->view('information/about', $data));
	}
}