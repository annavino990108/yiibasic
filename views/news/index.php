<?php
use yii\helpers\Html;

$this->title='';
?>

<?php if(!empty($news)): ?>
	<?php foreach ($news as $post):?>
		  <div class="card">
		    <div class="card-header">
		      <?= $post->date?>
		    </div>
		    <div class="card-body">
		        <div class="row">
		            <div class="col-4">
		               <img class="card-img-top" src=".../100px180/" alt="Card image cap" style="width: 280px;height: 180px;">
		             </div>
		                  <div class="col-6">
		                  <h5 class="card-title"> <?= $post->title?></h5>
		                  <p class="card-text"> <?= $post->content?></p>
		                  <a href="<?= \yii\helpers\Url::to(['/news/view','id'=>$post['id']])?>" class="btn btn-primary">Подробнее...</a>
		             </div>
		      </div>
		    </div>
		</div>
	<?php endforeach; ?>
<?php endif; ?>
