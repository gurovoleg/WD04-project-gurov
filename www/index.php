<?php
	
	require "config.php";
	require "db.php";


	// ROUTER - пересылаем на соответствующие страницы

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
			include "modules/main/index.php";
			break;
		case 'blog':
			include "modules/blog/index.php";
			break;
		case 'about':
			include "modules/about/index.php";
			break;
		case 'contacts':
			include "modules/contacts/index.php";
			break;
		default:
			echo '404 or main page';
	}

?>

