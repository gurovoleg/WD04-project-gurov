<div class="header-admin">
	<div class="user-info">
		<div class="avatar avatar--small">
		
			<?php if ( $_SESSION['logged_user']['avatar_small'] != "" ) { ?>
					<img src="<?=HOST?>usercontent/avatar/<?=$_SESSION['logged_user']['avatar_small']?>" alt="avatar" />
			<?php }?>	
		
		</div>
		<div class="user-info__data user-content ml-15">
			<h6 class="mb-1"><?=$_SESSION['logged_user']['name']?> <?=$_SESSION['logged_user']['lastname']?></h6>
			<a class="badge" href="<?=HOST?>profile">Администратор</a>
		</div>
	</div>
	<ul class="admin-nav section-ui">
		<li class="admin-nav-item"><a class="admin-nav__link" href="http://yandex.ru"><i class="fas fa-plus-circle"></i><span class="ml-10">Пост</span></a></li>
		<li class="admin-nav-item"><a class="admin-nav__link" href="#"><i class="fas fa-plus-circle"></i><span class="ml-10">Работа</span></a></li>
		<li class="admin-nav-item"><a class="admin-nav__link" href="#"><i class="fas fa-edit"></i><span class="ml-10">Обо мне</span></a></li>
		<li class="admin-nav-item"><a class="admin-nav__link" href="#"><i class="fas fa-edit"></i><span class="ml-10">Контакты</span></a></li>
		<li class="admin-nav-item"><a class="admin-nav__link" href="#"><i class="fas fa-envelope"></i><span class="ml-10">Сообщения</span></a></li>
	</ul>
	<ul class="admin-nav admin-nav--right section-ui">
		<li class="admin-nav-item"><a class="admin-nav__link" href="<?=HOST?>logout"><i class="fas fa-sign-out-alt"></i><span class="ml-10">Выход</span></a></li>
	</ul>
</div>
