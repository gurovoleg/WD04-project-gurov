<?php
	
	//DB настройки
	define('DB_HOST','localhost');
	define('DB_NAME','WD04-project-gurov');
	define('DB_USER','root');
	define('DB_PASS','root');

	// Задаем путь до корневой директории скрипта по протоколу
	define('HOST', $_SERVER['REQUEST_SCHEME'] . '//' . $_SERVER['HTTP_HOST'] . '/');
	
	// Задаем физический путь до корневой директории скрипта
	define('ROOT', dirname(__FILE__).'/');

?>