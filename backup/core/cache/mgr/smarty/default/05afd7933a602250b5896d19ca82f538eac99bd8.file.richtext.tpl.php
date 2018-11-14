<?php /* Smarty version Smarty-3.0.4, created on 2014-11-30 14:59:06
         compiled from "/home/a/amdxbk/ikona-yaroslavna.ru/public_html/manager/templates/default/element/tv/renders/input/richtext.tpl" */ ?>
<?php /*%%SmartyHeaderCode:2038781433547b068abb6c67-98829529%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '05afd7933a602250b5896d19ca82f538eac99bd8' => 
    array (
      0 => '/home/a/amdxbk/ikona-yaroslavna.ru/public_html/manager/templates/default/element/tv/renders/input/richtext.tpl',
      1 => 1416150348,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '2038781433547b068abb6c67-98829529',
  'function' => 
  array (
  ),
  'has_nocache_code' => false,
)); /*/%%SmartyHeaderCode%%*/?>
<?php if (!is_callable('smarty_modifier_escape')) include '/home/a/amdxbk/ikona-yaroslavna.ru/public_html/core/model/smarty/plugins/modifier.escape.php';
?><textarea id="tv<?php echo $_smarty_tpl->getVariable('tv')->value->id;?>
" name="tv<?php echo $_smarty_tpl->getVariable('tv')->value->id;?>
" class="modx-richtext" onchange="MODx.fireResourceFormChange();"><?php echo smarty_modifier_escape($_smarty_tpl->getVariable('tv')->value->get('value'));?>
</textarea>

<script type="text/javascript">

Ext.onReady(function() {
    
    MODx.makeDroppable(Ext.get('tv<?php echo $_smarty_tpl->getVariable('tv')->value->id;?>
'));
    
});
</script>