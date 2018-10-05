<form id="set-new-password" class="login-form" method="POST" action="<?=HOST?>set-new-password">
	<h1 class="text-center login-form__header">Введите новый пароль</h1>

	<?php require ROOT."templates/_parts/_errors.tpl"?>
	<?php require ROOT."templates/_parts/_success.tpl"?>

	<input class="input-form-registration mb-20" name="password" type="password" placeholder="Новый пароль" data-empty="Введите пароль"/>
		
	<div class="login-form-links text-center">
		<a href="<?=HOST?>login">Перейти на страницу Входа</a>
	</div>
	<div class="text-center pt-30">
		<input id="set-new-password__submit" type="submit" class="button button--enter pl-50 pr-50" name="set-new-password" value="Сохранить">
		<input type="hidden" name="set-new-password">
		<input type="hidden" name="one-time-code" value="<?=$_GET['code']?>">
		<input type="hidden" name="reset-email" value="<?=$_GET['email']?>">
		
	</div>
</form>