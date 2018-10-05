<form id="check-registration" class="login-form" method="POST" action="<?=HOST?>registration">
	<h1 class="text-center login-form__header">Регистрация</h1>

	<?php require ROOT."templates/_parts/_errors.tpl"?>

	<input class="input-form-registration mb-20" name="email" type="email" placeholder="Email" data-empty="Введите email" data-error="Неверный формат email"/>
	<input class="input-form-registration" name="password" type="password" placeholder="Пароль" data-empty="Введите пароль"/>
	
	<div class="text-center pt-30">
		<input id="check-registration__submit" type="submit" class="button button--enter" name="register" value="Регистрация">
		<input type="hidden" name="check-registration">
	</div>
</form>