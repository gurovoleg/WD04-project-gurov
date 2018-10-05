<?php

	
	if ( isset($_POST['check-registration']) ) {
			
		// Проверка полей
		if ( trim($_POST['email'] == '') ) {
			$errors[] = ['title'=>'Введите email', 'desc'=>'<p>Email обязателен для регистрации</p>'];
		}

		if ( trim($_POST['password'] == '') ) {
			$errors[] = ['title'=>'Введите пароль'];
		} 

		// Проверка пользователя в БД
		$count = R::count('users','email=?',[$_POST['email']]);
		if ( $count > 0 ) {
			$errors[] = ['title'=>'Данный email уже существует', 'desc'=>'<p>Пожалуйста выберите другой email или проверьте ваш пароль</p>'];		
		}

		// Запись нового пользователя в БД
		if ( empty($errors ) ) {
			$user = R::dispense('users');
			$user -> email = htmlentities($_POST['email']);
			$user -> role = 'user';
			$user -> password = password_hash($_POST['password'], PASSWORD_DEFAULT);
			R::store($user);

			$_SESSION['logged_user'] = $user;
			$_SESSION['login'] = 1;
			$_SESSION['role'] = $user->role;

			// header('Location:' . HOST . "profile-edit");
			header('Location:' . HOST);
			exit();
		}			

	}


	// Готовим контент для центральной части
	ob_start();
		include ROOT . "templates/login/form-registration.tpl";
		$content = ob_get_contents();
	ob_end_clean();
	
	include ROOT . "templates/_parts/_head.tpl";
	include ROOT . "templates/login/login-page.tpl";
	include ROOT . "templates/_parts/_foot.tpl";

?>