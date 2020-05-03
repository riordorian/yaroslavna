<?php
class ControllerInformationManual extends Controller {
	private $error = array();

	public function index() {
		$this->load->language('information/contact');

		$this->document->setTitle($this->language->get('Ярославна. Как выбрать икону'));

		$data['breadcrumbs'] = array();

		$data['breadcrumbs'][] = array(
			'text' => $this->language->get('text_home'),
			'separator' => '<span>&nbsp;»&nbsp;</span>',
			'href' => $this->url->link('common/home')
		);

		$data['breadcrumbs'][] = array(
			'text' => $this->language->get('Как выбрать икону'),
			'separator' => '<span>&nbsp;»&nbsp;</span>',
			'href' => $this->url->link('information/layout')
		);

		$data['heading_title'] = $this->language->get('Как выбрать икону');
		$data['footer'] = $this->load->controller('common/footer');
		$data['header'] = $this->load->controller('common/header');

		$this->load->model('catalog/manual');

		$data['types'] = [
			'kreshenie' => [
				'NAME' => 'На Крещение',
				'ICON' => 'baptism',
				'ITEMS' => $this->load->view('product/manual', ['items' => $this->model_catalog_manual->getProductsByOptions([
					'Предназначение иконы' => 'На Крещение'
				])])
			],

			'venchanie' => [
				'NAME' => 'На венчание (свадьбу)',
				'ICON' => 'marriage',
				'CHILDS' => [
					'NAME' => 'Кем вы являетесь молодоженам?',
					'ITEMS' => [
						'roditeli' => [
							'NAME' => 'Родители',
							'ITEMS' => $this->load->view('product/manual', ['items' => $this->model_catalog_manual->getProductsByOptions([
							   'Кто дарит' => 'Родители'
							])])
						],
						'drug'        => [
							'NAME' => 'Друг семьи',
							'ITEMS' => $this->load->view('product/manual', ['items' => $this->model_catalog_manual->getProductsByOptions([
								'Кто дарит' => 'Друг семьи'
							])])
						],
						'rodstvennik' => [
							'NAME' => 'Родственник',
							'ITEMS' => $this->load->view('product/manual', ['items' => $this->model_catalog_manual->getProductsByOptions([
								'Кто дарит' => 'Родственник'
							])])
						],
					]
				]
			],

			'podarok' => [
				'NAME' => 'В подарок',
				'ICON' => 'present',
				'CHILDS' => [
					'NAME' => 'Какой возраст именинника?',
					'ITEMS' => [
						'vzrosliy' => [
							'NAME' => 'Взрослый человек (18+)',
							'CHILDS' => [
								'ITEMS' => [
									'imennaya' => [
										'NAME' => 'Именная',
										'ITEMS' => $this->load->view('product/manual', ['items' => $this->model_catalog_manual->getProductsByOptions([
											'Категория' => 'Именная'
										])])
									],
									'profession' => [
										'NAME' => 'По профессии',
										'CHILDS' => [
											'ITEMS' => [
												[
													'NAME' => 'ФСБ, МВД',
													'ITEMS' => $this->load->view('product/manual', ['items' => $this->model_catalog_manual->getProductsByOptions([
														'Профессия' => 'ФСБ, МВД'
													])])
												],
												[
													'NAME' => 'МЧС',
													'ITEMS' => $this->load->view('product/manual', ['items' => $this->model_catalog_manual->getProductsByOptions([
														'Профессия' => 'МЧС'
													])])
												],
												[
													'NAME' => 'РЖД',
													'ITEMS' => $this->load->view('product/manual', ['items' => $this->model_catalog_manual->getProductsByOptions([
														'Профессия' => 'РЖД'
													])])
												],
												[
													'NAME' => 'Врачи, фармацевты, медработники',
													'ITEMS' => $this->load->view('product/manual', ['items' => $this->model_catalog_manual->getProductsByOptions([
														'Профессия' => 'Врачи, фармацевты, медработники'
													])])
												],
												[
													'NAME' => 'Работники дет.садов, дет.домов',
													'ITEMS' => $this->load->view('product/manual', ['items' => $this->model_catalog_manual->getProductsByOptions([
														'Профессия' => 'Работники дет.садов, дет.домов'
													])])
												],
												[
													'NAME' => 'Учителя, преподаватели, учёные',
													'ITEMS' => $this->load->view('product/manual', ['items' => $this->model_catalog_manual->getProductsByOptions([
														'Профессия' => 'Учителя, преподаватели, учёные'
													])])
												],
												[
													'NAME' => 'Финансисты',
													'ITEMS' => $this->load->view('product/manual', ['items' => $this->model_catalog_manual->getProductsByOptions([
														'Профессия' => 'Финансисты'
													])])
												],
												[
													'NAME' => 'Руководители предприятий',
													'ITEMS' => $this->load->view('product/manual', ['items' => $this->model_catalog_manual->getProductsByOptions([
														'Профессия' => 'Руководители предприятий'
													])])
												],
												[
													'NAME' => 'Дипломаты, переводчики, лингвисты',
													'ITEMS' => $this->load->view('product/manual', ['items' => $this->model_catalog_manual->getProductsByOptions([
														'Профессия' => 'Дипломаты, переводчики, лингвисты'
													])])
												],
												[
													'NAME' => 'Моряки, водители, гиды',
													'ITEMS' => $this->load->view('product/manual', ['items' => $this->model_catalog_manual->getProductsByOptions([
														'Профессия' => 'Моряки, водители, гиды'
													])])
												],
												[
													'NAME' => 'Юристы, налоговики, приставы',
													'ITEMS' => $this->load->view('product/manual', ['items' => $this->model_catalog_manual->getProductsByOptions([
														'Профессия' => 'Юристы, налоговики, приставы'
													])])
												],
												[
													'NAME' => 'Нефтегазовая отрасль',
													'ITEMS' => $this->load->view('product/manual', ['items' => $this->model_catalog_manual->getProductsByOptions([
														'Профессия' => 'Нефтегазовая отрасль'
													])])
												],
												[
													'NAME' => 'Государственные служащие',
													'ITEMS' => $this->load->view('product/manual', ['items' => $this->model_catalog_manual->getProductsByOptions([
														'Профессия' => 'Государственные служащие'
													])])
												],
												[
													'NAME' => 'Авиация',
													'ITEMS' => $this->load->view('product/manual', ['items' => $this->model_catalog_manual->getProductsByOptions([
														'Профессия' => 'Авиация'
													])])
												],
												[
													'NAME' => 'Атомная отрасль',
													'ITEMS' => $this->load->view('product/manual', ['items' => $this->model_catalog_manual->getProductsByOptions([
														'Профессия' => 'Атомная отрасль'
													])])
												],
												[
													'NAME' => 'Таможня',
													'ITEMS' => $this->load->view('product/manual', ['items' => $this->model_catalog_manual->getProductsByOptions([
														'Профессия' => 'Таможня'
													])])
												],
												[
													'NAME' => 'Повара, аграрии, животноводство',
													'ITEMS' => $this->load->view('product/manual', ['items' => $this->model_catalog_manual->getProductsByOptions([
														'Профессия' => 'Повара, аграрии, животноводство'
													])])
												],
												[
													'NAME' => 'Артисты, дизайнеры, художники',
													'ITEMS' => $this->load->view('product/manual', ['items' => $this->model_catalog_manual->getProductsByOptions([
														'Профессия' => 'Артисты, дизайнеры, художники'
													])])
												],
												[
													'NAME' => 'Строители, инженеры, архитекторы',
													'ITEMS' => $this->load->view('product/manual', ['items' => $this->model_catalog_manual->getProductsByOptions([
														'Профессия' => 'Строители, инженеры, архитекторы'
													])])
												],
												[
													'NAME' => 'Шахтёры, металлурги, химики',
													'ITEMS' => $this->load->view('product/manual', ['items' => $this->model_catalog_manual->getProductsByOptions([
														'Профессия' => 'Шахтёры, металлурги, химики'
													])])
												],
												[
													'NAME' => 'Спортсмены',
													'ITEMS' => $this->load->view('product/manual', ['items' => $this->model_catalog_manual->getProductsByOptions([
														'Профессия' => 'Спортсмены'
													])])
												],
												[
													'NAME' => 'IT, HR, рекламщики, менеджеры',
													'ITEMS' => $this->load->view('product/manual', ['items' => $this->model_catalog_manual->getProductsByOptions([
														'Профессия' => 'IT, HR, рекламщики, менеджеры'
													])])
												],
												[
													'NAME' => 'Рыболовы и охотники',
													'ITEMS' => $this->load->view('product/manual', ['items' => $this->model_catalog_manual->getProductsByOptions([
														'Профессия' => 'Рыболовы и охотники'
													])])
												],
											]
										]
									],
									'v_dom' => [
										'NAME' => 'Икона в дом',
										'ITEMS' => $this->load->view('product/manual', ['items' => $this->model_catalog_manual->getProductsByOptions([
											'Предназначение иконы' => 'Себе в дом'
										])])

									],
									'semeynaya' => [
										'NAME' => 'Семейная икона',
										'ITEMS' => $this->load->view('product/manual', ['items' => $this->model_catalog_manual->getProductsByOptions([
											'Категория' => 'Семейная'
										])])
									],
								]
							]
						],
						'otrok' => [
							'NAME' => 'Отрок и молодой человек от 7 лет',
							'ITEMS' => $this->load->view('product/manual', ['items' => $this->model_catalog_manual->getProductsByOptions([
								'Возраст получателя' => 'Отрок и молодой человек от 7 лет'
							])])
						],
						'rebenok' => [
							'NAME' => 'Ребёнок до 7 лет',
							'ITEMS' => $this->load->view('product/manual', ['items' => $this->model_catalog_manual->getProductsByOptions([
								'Возраст получателя' => 'Ребёнок до 7 лет'
							])])
						],
					]
				]
			],

			'v_dom' => [
				'NAME' => 'Себе в дом',
				'ICON' => 'home',
				'ITEMS' => $this->load->view('product/manual', ['items' => $this->model_catalog_manual->getProductsByOptions([
					'Предназначение иконы' => 'Себе в дом'
				])])
			],

			'v_hram' => [
				'NAME' => 'В храм',
				'ICON' => 'church',
				'ITEMS' => $this->load->view('product/manual', ['items' => $this->model_catalog_manual->getProductsByOptions([
					'Предназначение иконы' => 'В храм'
				])])
			],

			'povod' => [
				'NAME' => 'Особый повод',
				'ICON' => 'calendar',
				'CHILDS' => [
					'ITEMS' => [
						'Болящим' => [
							'NAME' => 'Болящим',
							'ITEMS' => $this->load->view('product/manual', ['items' => $this->model_catalog_manual->getProductsByOptions([
								'Особый повод' => 'Болящим'
							])])
						],
						'Беременность' => [
							'NAME' => 'Беременность',
							'ITEMS' => $this->load->view('product/manual', ['items' => $this->model_catalog_manual->getProductsByOptions([
								'Особый повод' => 'Беременность'
							])])
						],
						'О Замужестве' => [
							'NAME' => 'О Замужестве',
							'ITEMS' => $this->load->view('product/manual', ['items' => $this->model_catalog_manual->getProductsByOptions([
								'Особый повод' => 'О Замужестве'
							])])
						],
						'Покровители семьи и брака' => [
							'NAME' => 'Покровители семьи и брака',
							'ITEMS' => $this->load->view('product/manual', ['items' => $this->model_catalog_manual->getProductsByOptions([
								'Особый повод' => 'Покровители семьи и брака'
							])])
						],
						'Новоселье' => [
							'NAME' => 'Новоселье',
							'ITEMS' => $this->load->view('product/manual', ['items' => $this->model_catalog_manual->getProductsByOptions([
								'Особый повод' => 'Новоселье'
							])])
						],
						'Силы в преодолении трудностей' => [
							'NAME' => 'Силы в преодолении трудностей',
							'ITEMS' => $this->load->view('product/manual', ['items' => $this->model_catalog_manual->getProductsByOptions([
								'Особый повод' => 'Силы в преодолении трудностей'
							])])
						],
						'Работа, деньги' => [
							'NAME' => 'Работа, деньги',
							'ITEMS' => $this->load->view('product/manual', ['items' => $this->model_catalog_manual->getProductsByOptions([
								'Особый повод' => 'Работа, деньги'
							])])
						],
					]
				]
			],
		];



		$this->response->setOutput($this->load->view('information/manual', $data));
	}
}
?>


