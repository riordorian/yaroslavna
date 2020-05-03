<?php
class ControllerInformationLayout extends Controller {
	private $error = array();

	public function index() {
		$this->load->language('information/contact');

		$this->document->setTitle($this->language->get('Ярославна. Получить макет иконы'));

		$data['breadcrumbs'] = array();

		$data['breadcrumbs'][] = array(
			'text' => $this->language->get('text_home'),
			'separator' => '<span>&nbsp;»&nbsp;</span>',
			'href' => $this->url->link('common/home')
		);

		$data['breadcrumbs'][] = array(
			'text' => $this->language->get('Получить макет иконы'),
			'separator' => '<span>&nbsp;»&nbsp;</span>',
			'href' => $this->url->link('information/layout')
		);

		$data['heading_title'] = $this->language->get('Получить макет иконы');
		$data['footer'] = $this->load->controller('common/footer');
		$data['header'] = $this->load->controller('common/header');

		$this->response->setOutput($this->load->view('information/icon_layout', $data));
	}
}
?>


