<?php
/* Smarty version 4.3.1, created on 2025-04-11 23:11:59
  from 'app:controllersnotificationinPlaceNotificationContent.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '4.3.1',
  'unifunc' => 'content_67f9a1bfa24526_83172068',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '6a308e60c5c6063ff7e1cc3cb172608528aed0c6' => 
    array (
      0 => 'app:controllersnotificationinPlaceNotificationContent.tpl',
      1 => 1724443806,
      2 => 'app',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_67f9a1bfa24526_83172068 (Smarty_Internal_Template $_smarty_tpl) {
?><div id="pkp_notification_<?php echo call_user_func_array($_smarty_tpl->registered_plugins[ 'modifier' ][ 'escape' ][ 0 ], array( $_smarty_tpl->tpl_vars['notificationId']->value ));?>
"<?php if ($_smarty_tpl->tpl_vars['notificationStyleClass']->value) {?> class="<?php echo $_smarty_tpl->tpl_vars['notificationStyleClass']->value;?>
"<?php }?>>
	<?php if ($_smarty_tpl->tpl_vars['notificationTitle']->value) {?>
		<span class="title">
			<?php echo $_smarty_tpl->tpl_vars['notificationTitle']->value;?>

		</span>
	<?php }?>
	<?php if ($_smarty_tpl->tpl_vars['notificationContents']->value) {?>
		<span class="description">
			<?php echo $_smarty_tpl->tpl_vars['notificationContents']->value;?>

		</span>
	<?php }?>
</div>
<?php }
}
