<body class="login-page">
	<!-- header -->
	<div class="login-header">
		<div class="logo">
			<div class="logo-icon"><i class="far fa-paper-plane"></i></div>
			<div class="logo_description"><a class="header-logo__title" href="#">Супер сайт</a><a class="header-logo__sub" href="#"></a></div>
		</div>
		
		<?php if ( $uri[0] == 'login' || $uri[0] == 'lost-password' || $uri[0] == 'set-new-password' ) {?>
			<a class="login-header__link" href="<?=HOST?>registration">Регистрация</a>
		<?php } else if ( $uri[0] == 'registration' ) {?>
			<a class="login-header__link" href="<?=HOST?>login">Вход</a>
		<?php }?>

	</div>
	
	<!-- main content (Подгружаем данные со страницы form-registration.tpl) -->
	<?=$content?>
	
	<!-- footer -->
	<div class="login-page-footer">
		<div class="footer__item footer__copyright">
			<!-- <p class="text-center">© Юрий Ключевский <br/></p> -->
			<p class="text-center">Создано с<i class="fas fa-heart animation-pulse"></i>в <a href="http://webcademy.ru" target="_blank"><span>WebCademy.ru</span> </a>в 2018 году</p>
		</div>
	</div>


