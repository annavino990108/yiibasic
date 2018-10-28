
	<li style="list-style: none;">
		<a href="">
		<?= $category['name']?>
		<?php if(isset($category['childs'])):?>
			<span>
				<i>V</i>
			</span>
		<?php endif;?>	
		</a>
		<?php if(isset($category['childs'])):?>
		<ul>
			<?= $this->getMenuHtml($category['childs'])?>
		</ul>
		<?php endif;?>
	</li>