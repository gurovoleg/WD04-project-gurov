<?php
	
	$title = "MAIN";
	
	$details = R::find('about');

	if (!empty($details)) {
		$aboutUser = $details[1]['name'];
		$aboutDesc = $details[1]['description'];
	} else {
		$aboutUser = "No data from DB";
		$aboutDesc = "No data from DB";
	}

	// Функция включает буферизацию (то есть ничего не выводится, а записывается в буфер)
	ob_start();
		// Загружаем страницу с ее заметкой и передаем в переменную, чтобы вывести уже в template.tpl
		include ROOT . "templates/main/main.tpl";
		$content = ob_get_contents();
	ob_end_clean();
	
	// Выводим шаблоны
	include ROOT . "templates/_parts/_header.tpl";
	include ROOT . "templates/template.tpl";
	include ROOT . "templates/_parts/_footer.tpl";

?>