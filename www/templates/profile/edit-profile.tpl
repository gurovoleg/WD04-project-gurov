<div class="content">
	<div class="container user-content section-page">
		<div class="col-md-12 offset-md-1">
			<h1>Редактировать профиль</h1>
		</div>
		
		<?php include ROOT . "templates/_parts/_errors.tpl";?>

		<form action="<?=HOST?>edit-profile" method="POST" enctype="multipart/form-data">
			<div class="col-md-4 offset-md-1">
				<div class="form-group">
					<label class="label">Имя
						<input class="input" name="firstname" type="text" placeholder="Введите имя" value="<?=$currentUser->name?>"/>
					</label>
				</div>
				<div class="form-group">
					<label class="label">Фамилия
						<input class="input" name="secondname" type="text" placeholder="Введите фамилию" value="<?=$currentUser->lastname?>"/>
					</label>
				</div>
				<div class="form-group">
					<label class="label">Email
						<input class="input" name="email" type="text" placeholder="Введите email" value="<?=$currentUser->email?>"/>
					</label>
				</div>
			</div>
			<div class="col-md-12 offset-md-1">
				<p><strong>Фотография</strong></p>
				<p>Изображение jpg или png, размером больше чем 100х100 пикселей, и весом до 4мб.</p>
			</div>
			<div class="col-md-4 offset-md-1">
			
				<input class="inputfile" type="file" name="avatar" id="file" />
				<label class="label-input-file" for="file">Выбрать файл</label>
				<span>Файл не выбран</span>
			
				<div class="form-group">
					<label class="label">Страна
						<input class="input" name="country" type="text" placeholder="Введите страну" value="<?=$currentUser->country?>"/>
					</label>
				</div>
				<div class="form-group">
					<label class="label">Город
						<input class="input" name="city" type="text" placeholder="Введите город" value="<?=$currentUser->city?>"/>
					</label>
				</div>
				<!-- <input type="submit" name="update-profile" class="button button--save" href="<?=HOST?>profile" value="Сохранить"> -->
				<input type="submit" name="update-profile" class="button button--save" value="Сохранить">
				<a class="button ml-45" href="<?=HOST?>profile">Отмена</a>
			</div>
		</form>
	</div>
</div>