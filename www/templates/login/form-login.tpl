<form id="check-login" class="login-form" method="POST" action="<?=HOST?>login">
	<h1 class="text-center login-form__header">Вход на сайт</h1>

	<?php require ROOT."templates/_parts/_errors.tpl"?>

	<?php if ( isset($_GET['success']) ) {?>
		<div class="notify notify--success mb-20">Пароль обновлен</div>
	<?php } ?>	

	<input class="input-form-registration mb-20" name="email" type="email" placeholder="Email" data-empty="Введите email" data-error="Неверный формат email"/>
	<input class="input-form-registration" name="password" type="password" placeholder="Пароль" data-empty="Введите пароль"/>
	
	<div class="login-form-links">
		<a href="<?=HOST?>lost-password">Забыл пароль</a>
	</div>
	<div class="text-center pt-30">
		<input id="check-login__submit" type="submit" class="button button--enter pl-50 pr-50" name="login" value="Войти">
		<input  type="hidden" name="check-login">
	</div>
</form>