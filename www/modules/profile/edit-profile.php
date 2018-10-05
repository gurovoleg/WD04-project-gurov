<?php

	$currentUser = $_SESSION['logged_user'];
	$user = R::load('users', $currentUser->id);

	if ( isset($_POST['update-profile']) ) {
		
		// Проверяем что есть ключевые поля
		if ( trim($_POST['firstname']) == "" ) $errors[] = ['title' => 'Введите имя' ];
		if ( trim($_POST['secondname']) == "") $errors[] = ['title' => 'Введите фамилию' ];
		if ( trim($_POST['email']) == "" ) $errors[] = ['title' => 'Введите Email' ];

		if ( empty($errors) ) {
			
			$user->email = htmlentities($_POST['email']);
			$user->name = htmlentities($_POST['firstname']);
			$user->lastname = htmlentities($_POST['secondname']);
			$user->city = htmlentities($_POST['city']);
			$user->country = htmlentities($_POST['country']);
			
			// tmp_name  - имя верменного файла, который пока хранится локально во верменной директории	
			if ( isset($_FILES['avatar']['name']) && $_FILES['avatar']['tmp_name'] != "" ) {
				
				// Зададим параметры картинки в переменные
				$fileName = $_FILES['avatar']['name'];
				$fileTmpLocation = $_FILES['avatar']['tmp_name'];
				$fileType = $_FILES['avatar']['type'];
				$fileSize = $_FILES['avatar']['size'];
				$fileErrorMsg = $_FILES['avatar']['error'];
				$temp = explode('.', $fileName);
				$fileExt = end($temp);

				// Проверяем значения
			 	// получаем размеры изображения и создаем массив с шириной и высотой
				list($width, $height) = getimagesize($fileTmpLocation);

				if ( $width < 10 || $height < 10) {
					$errors[] = ['title'=>'Изображение не имеет размеров'];
				}
				
				// Задаем ограничение в 4мб
				if ($fileSize > 4194304 ){
					$errors[] = ['title'=>'Файл с изображением должен быть менее 4мб'];
				// Задаем ограничение по типу файла
				} else if (!preg_match("/\.(gif|jpg|png|jpeg)$/i", $fileName)) {
					$errors[] = ['title'=>'Неверный формат файла', 'desc'=>'<p>Файл изображения должен быть в формате gif, jpg, jpeg, png</p>'];
				} else if ($fileErrorMsg == 1) {
					$errors[] = ['title'=>'При загрузке изображения произошла ошибка. Попробуйте еще раз'];
				}	

				// Проверяем установлен ли аватар у пользователя и при наличии удаляем
				$avatarFolderLocation = ROOT . 'usercontent/avatar/';

				if ( $user['avatar'] != "" ) {
					$picurl = $avatarFolderLocation . $user['avatar'];
					if ( file_exists($picurl) ) {unlink($picurl);}
				}
				if ( $user['avatar_small'] != "" ) {
					$picurl = $avatarFolderLocation . $user['avatar_small'];
					if ( file_exists($picurl) ) {unlink($picurl);}
				}

				// Перемещаем загруженный файл в нужную директорию
				$db_file_name = rand(1000000000, 9999999999) . "." . $fileExt;
				$uploadFile = $avatarFolderLocation . $db_file_name;
				$moveResult = move_uploaded_file($fileTmpLocation, $uploadFile);

				if ( $moveResult != true ) {
					$errors[] = ['title'=>'Ошибка сохранения файла'];
				}

				include_once( ROOT . "libs/image_resize_imagick.php" );

				// Большая картинка
				$target_file = $avatarFolderLocation . $db_file_name;
				$wmax =222;
				$hmax =222;
				$img = createThumbnail($target_file, $wmax, $hmax); // возвращается объект
				$img->writeImage($target_file);

				$user->avatar = $db_file_name;

				// Маленькая картинка
				$target_file = $avatarFolderLocation . $db_file_name;
				$resized_file = $avatarFolderLocation . "50-" . $db_file_name;
				$wmax = 50;
				$hmax = 50;
				$img = createThumbnail($target_file, $wmax, $hmax); // возвращается объект
				$img->writeImage($resized_file);
				
				$user->avatar_small = "50-" . $db_file_name;				

			}
			
			R::store($user);
			$_SESSION['logged_user'] = $user;
			header("Location:" . HOST . "profile");
			exit();

		}

	}

	ob_start();
		include ROOT . "templates/_parts/_header.tpl";
		include ROOT . "templates/profile/edit-profile.tpl";
		$content = ob_get_contents();
	ob_end_clean();
	
	// Выводим шаблоны
	include ROOT . "templates/_parts/_head.tpl";
	include ROOT . "templates/template.tpl";
	include ROOT . "templates/_parts/_footer.tpl";
	include ROOT . "templates/_parts/_foot.tpl";

?>