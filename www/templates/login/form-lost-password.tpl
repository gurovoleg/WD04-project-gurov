<form id="lost-password" class="login-form" method="POST" action="<?=HOST?>lost-password">
	<h1 class="text-center login-form__header">Забыл пароль</h1>

	<?php require ROOT."templates/_parts/_errors.tpl"?>
	<?php require ROOT."templates/_parts/_success.tpl"?>

	<input class="input-form-registration mb-20" name="email" type="email" placeholder="Email" data-empty="Введите email" data-error="Неверный формат email"/>
		
	<div class="login-form-links text-center">
		<a href="<?=HOST?>login">Перейти на страницу Входа</a>
	</div>
	<div class="text-center pt-30">
		<input id="lost-password__submit" type="submit" class="button button--enter pl-50 pr-50" name="lost-password" value="Восстановить">
		<input  type="hidden" name="lost-password">
	</div>
</form>