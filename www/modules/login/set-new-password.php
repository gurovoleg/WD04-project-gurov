<?php

	// Проверяем, когда пользователь перешел по ссылке с email и кодом
	if ( !empty($_GET['email']) ) {

		$user = R::findOne('users', 'email=?', [$_GET['email']]);
		
		if ( $user ) {
			$user->recovery_code_attempts--; // Уменьшаем число попыток на 1
			R::store($user);

			// Проверка кол-ва попыток
			if ( $user->recovery_code_attempts < 1 ) {
				echo "Превышено число попыток";
				echo "<br><br>";
				echo "<a href='" . HOST . "'>Вернуться на главную</a>";
				die;
			}

			// Проверка кода
			if ( isset($_GET['code']) ) {
				if ( $user->recovery_code != $_GET['code'] ) {
					echo "Неверный проверочный код";
					die;
				}
			}
			
		} else {
			echo "Такой пользователь не найден";
			die;
		}

	// Форма установки нового пароля отправлена после всех успешных проверок
	} else if ( isset($_POST['set-new-password']) ) {

		$user = R::findOne('users', 'email=?', [$_POST['reset-email']]);
				
		if ( $user ) {
			
			if ( $user->recovery_code_attempts < 1 ) {
				echo "Превышено число попыток";
				die;
			}
			
			$user->recovery_code_attempts--; // Уменьшаем число попыток на 1 
			R::store($user);
			
			// Проверяем one-time-code
			if ( $user->recovery_code == $_POST['one-time-code']) { 

				// Если все верно - ставим новый пароль и убиваем код
				$user->password = password_hash($_POST['password'], PASSWORD_DEFAULT);

				// Обнуляем кол-во попыток
				$user->recovery_code_attempts = 0;
				R::store($user);
				$success[] = ['title' => "Пароль обновлен"];
				
				// Переходим на логин с параметром для уведомления
				header('Location:' . HOST . 'login?success=true');
			
			}
			
		}

	// Запускам, когда пользователь просто пытается зайти на страницу без необходимых параметров
	} else {

		header('Location:' . HOST . 'lost-password');
		die;
	}

	// Готовим контент для центральной части
	ob_start();
		include ROOT . "templates/login/form-set-new-password.tpl";
		$content = ob_get_contents();
	ob_end_clean();

	include ROOT . "templates/_parts/_head.tpl";
	include ROOT . "templates/login/login-page.tpl";
	include ROOT . "templates/_parts/_foot.tpl";

?>