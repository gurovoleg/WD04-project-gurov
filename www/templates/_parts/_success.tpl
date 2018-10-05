<?php 
	
	foreach($success as $item) {

		if ( count($item) == 1 ) {?>
			<div class="notify notify--success mb-20"><?=$item['title']?></div>

<?php 	} else if ( count($item) == 2 ) {?>
			<div class="notify no-paddings mb-20">
				<div class="notify no-radius-bottom notify--success"><?=$item['title']?></div>
				<div class="notify no-radius-top">
					<?=$item['desc']?>					
				</div>
			</div>
<?php 	} 

	}

?>