<?php
	
	// Функция включает буферизацию (то есть ничего не выводится, а записывается в буфер)
	ob_start();
		// Загружаем страницу с ее заметкой и передаем в переменную, чтобы вывести уже в template.tpl
		include ROOT . "templates/_parts/_header.tpl";
		$content = ob_get_contents();
	ob_end_clean();
	
	// Выводим шаблоны
	include ROOT . "templates/_parts/_head.tpl";
	include ROOT . "templates/template.tpl";
	include ROOT . "templates/_parts/_footer.tpl";
	include ROOT . "templates/_parts/_foot.tpl";

?>