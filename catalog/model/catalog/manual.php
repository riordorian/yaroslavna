<?php
class ModelCatalogManual extends Model {

	public function getProductsByOptions($filter = [])
	{
		$query = "SELECT DISTINCT p.product_id, pd.name, p.model, p.image, po.value as description FROM " . DB_PREFIX . "product p LEFT JOIN " . DB_PREFIX .  "product_description pd ON (p.product_id=pd.product_id) LEFT JOIN " . DB_PREFIX . "product_option po ON (p.product_id=po.product_id) LEFT JOIN " . DB_PREFIX . "product_option_value pov ON (p.product_id = pov.product_id) LEFT JOIN " . DB_PREFIX . "option_value_description ovd ON (pov.option_value_id=ovd.option_value_id) LEFT JOIN " . DB_PREFIX . "option_description od ON (od.option_id=pov.option_id)";

		$i = 0;
		foreach ($filter as $fieldName => $fieldVal) {

			$query .= ($i == 0 ? ' WHERE ' : ' AND ');
			$query .= 'od.name="' . $fieldName . '" AND ovd.name' . (is_array($fieldVal) ? ' IN(' . implode(',', $fieldVal) . ')' : '="' . $fieldVal . '"');
			$i++;
		}
		
		$query = $this->db->query($query);

		$rows = $query->rows;
		foreach ($rows as &$row) {
			if (!empty($row['image'])) {
				$row['image'] = $this->model_tool_image->resize($row['image'], $this->config->get($this->config->get('config_theme') . '_image_product_width'), $this->config->get($this->config->get('config_theme') . '_image_product_height'));
				$row['url'] = $this->url->link('product/product', 'product_id=' . $row['product_id']);
			}
		}
		unset($row);
		
		return $rows;

	}
}