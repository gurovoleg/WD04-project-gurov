<div class="content">
	<div class="container user-content section-page">
		<div class="row align-items-center">
			<div class="col">
				<div class="title-1">Профиль</div>
			</div>
			<div class="col text-right"><a class="button button--edit" href="<?=HOST?>edit-profile">Редактировать</a></div>
		</div>
		<div class="row">
			<div class="col-md-auto">
				<div class="avatar">

					<?php if ( $_SESSION['logged_user']['avatar'] != "" ) { ?>
							<img src="<?=HOST?>usercontent/avatar/<?=$_SESSION['logged_user']['avatar']?>" alt="avatar" />
					<?php }?>	

				</div>
			</div>
			<div class="col ml-35">
				<div class="user-description mb-20">
					<div class="user-description__title">Имя и фамилия</div>
					<div class="user-description__desc"><?=$currentUser->name?> <?=$currentUser->lastname?></div>
				</div>
				<div class="user-description mb-20">
					<div class="user-description__title">Email</div>
					<div class="user-description__desc"><?=$currentUser->email?></div>
				</div>
				<div class="user-description mb-20">
					<div class="user-description__title">Страна, Город</div>
					<div class="user-description__desc"><?=$currentUser->country?>, <?=$currentUser->city?></div>
				</div>
			</div>
		</div>
		
		<div class="title-2 mt-30">Комментарий пользователя</div>
		<div class="comments-item">
			<div class="comment-item__content">
				<div class="comment-item__top"><a class="user-name-href" href="#"> Джон До</a>
					<div class="comment-item__date"><span><i class="far fa-clock"></i></span><span>  05 мая 2017 года в 15:45</span></div>
				</div>
				<div class="comment-item__text">Замечательный парк, обязательно отправлюсь туда этим летом.</div>
			</div>
		</div>
		<div class="comments-item">
			<div class="comment-item__content">
				<div class="comment-item__top"><a class="user-name-href" href="#">Ноутбук для веб-разработчиков</a>
					<div class="comment-item__date"><span><i class="far fa-clock"></i></span><span> 15 Мая 2017  года в 10:02</span></div>
				</div>
				<div class="comment-item__text">Замечательный парк, обязательно отправлюсь туда этим летом.</div>
			</div>
		</div>
		<div class="comments-item">
			<div class="comment-item__content">
				<div class="comment-item__top"><a class="user-name-href" href="#">Настройка Sublime</a>
					<div class="comment-item__date"><span><i class="far fa-clock"></i></span><span> 12 Мая 2017  года в 20:39</span></div>
				</div>
				<div class="comment-item__text">Замечательный парк, обязательно отправлюсь туда этим летом.</div>
			</div>
		</div>
	</div>
</div>