<?php
	
	require "config.php";
	require "db.php";
	require "libs/functions.php";
	session_start();


	// ::::::::::::::: ROUTER - пересылаем на соответствующие страницы :::::::::::::::::::::::

	// Строка с запросом
	$uri =  $_SERVER['REQUEST_URI'];
	$uri = trim($uri,'/');
	// Оставляем только буквы и цифры
	$uri = filter_var($uri, FILTER_SANITIZE_URL);
	// Разбиваем в массив
	$uri = explode('?', $uri);

	
	// Запускаем модуль соответствующей страницы
	switch ($uri[0]) {
		case '':
			$title = "Главная";
			require ROOT . "modules/main/index.php";
			break;
		// :::::::: USERS (маршруты для страницы регистрации) :::::::::::::::::
		case 'registration':	
			$title = "Регистрация";
			require ROOT . "modules/login/registration.php";
			break;
		case 'login':
			$title = "Вход на сайт";
			require ROOT . "modules/login/login.php";
			break;	
		case 'logout':	
			require ROOT . "modules/login/logout.php";
			break;
		case 'lost-password':	
			$title = "Восстановление пароля";
			require ROOT . "modules/login/lost-password.php";
			break;
		case 'set-new-password':	
			$title = "Новый пароль";
			require ROOT . "modules/login/set-new-password.php";
			break;
		case 'profile':	
			$title = "Профиль пользователя";
			require ROOT . "modules/profile/profile.php";
			break;
		case 'edit-profile':	
			$title = "Редактирование профиля";
			require ROOT . "modules/profile/edit-profile.php";
			break;
		// :::::::: END USERS :::::::::::::::::
		
		case 'blog':
			$title = "Блог";
			require "modules/blog/index.php";
			break;
		case 'about':
			require "modules/about/index.php";
			break;
		case 'contacts':
			$title = "Контакты";
			require "modules/contacts/index.php";
			break;
		default:
			echo '404 or main page';
	}

?>

