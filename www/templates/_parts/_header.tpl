<?php
	if ( isset($_SESSION['logged_user']) && $_SESSION['login'] == 1 && $_SESSION['role'] == 'admin' ) {
		include ROOT . "templates/_parts/admin-panel.tpl";
	}
?>

<header class="header">
	<div class="header-admin__container">
		<div class="header-top">
			<?php include ROOT . "templates/_parts/_header-logo.tpl"; ?>
			
			<?php 
				if ( isset($_SESSION['logged_user']) && $_SESSION['login'] == 1 ) {
					
					// Пользователь на сайте (Не админ)
					if ( $_SESSION['role'] != 'admin' ) {
						include ROOT . "templates/_parts/_header-user-profile.tpl";
					}
					
				} else {
					// Нет пользователя
					include ROOT . "templates/_parts/_header-login-links.tpl";	
				}

			?>
		
		</div>
		
		<?php include ROOT . "templates/_parts/_header-nav.tpl"; ?>
	
	</div>
</header>