<nav class="menu">
	<li>
		<a href="<?= \yii\helpers\Url::to(['/category/view','id'=>$category['id']])?>">
		<?= $category['name']?>
		<?php if(isset($category['childs'])):?>
			<!--<span>
				<i>V</i>
			</span>!-->
		<?php endif;?>	
		</a>
		<?php if(isset($category['childs'])):?>
		<ul>
			<?= $this->getMenuHtml($category['childs'])?>
		</ul>
		<?php endif;?>
	</li>
</nav>
	<style type="text/css">
		.menu li{
			font-family: Arial;
			font-size: 15px;
			list-style: none;
			float: left;
			position: relative;
			background-color: #F8F9FA;
			width: 200px;
			text-align: center;
		}
		.menu a{
			text-decoration: none;
			display: block;
			padding: 10px 10px;
		}
		#active a, .menu li:hover > a{
			background:white;

		}
		.menu ul{
			visibility: hidden;
			padding: 0;
			position: absolute;
		}
		.menu li:hover > ul{
			visibility: visible;
			position: relative;
		}
		.menu ul a{
			padding: 16.5px 65px;
		}

		.menu li:first-child:hover > ul{
			left:0;
		}

	</style>