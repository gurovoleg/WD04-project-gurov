<?php 
	
	foreach($errors as $error) {

		if ( count($error) == 1 ) {?>
			<div class="notify notify--error mb-20"><?=$error['title']?></div>

<?php 	} else if ( count($error) == 2 ) {?>
			<div class="notify no-paddings mb-20">
				<div class="notify no-radius-bottom notify--error"><?=$error['title']?></div>
				<div class="notify no-radius-top">
					<?=$error['desc']?>					
				</div>
			</div>
<?php 	} 

	}

?>