<?php
use yii\helpers\Html;
use yii\widgets\LinkPager;

$this->title = "Поиск $q";
?>
<?php if ($q==""){?>
	<h2>Пустой запрос</h2>
	<?php } else {?>
		<h2>Результаты поиска:</h2>

	<?php if (!$models){?>
		<p>Ничего не найдено</p>
		<?php } else {?>
  <?php foreach ($models as $post):?>
      <div class="card" style="margin-top:20px;" >
             <div class="card-header">
          <span style="color: #007BFF;font-size: 15px;"><?= $post->date?></span>
        </div>
        <div class="card-body">
            <div class="row">
                <div class="col-4">
                   <img class="card-img-top" src="<?= $post->image?>" alt="Card image cap" style="width: 280px;height: 180px;">
                 </div>
                      <div class="col-8">
                      <h5 class="card-title" style="font-size: 15px;"> <?= $post->title?></h5>
                      <p class="card-text" style="font-size: 13px;"> <?= $post->description?></p>
                      <a href="<?= \yii\helpers\Url::to(['/news/view','id'=>$post['id']])?>" class="btn btn-primary">Подробнее...</a>
                 </div>
          </div>
        </div>
    </div>
  <?php endforeach; ?>

<?php echo LinkPager::widget([
    'pagination' => $pages,
]);?>
<?php }?>
	<?php }?>