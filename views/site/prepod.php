<?php
use yii\helpers\Html;
use yii\widgets\LinkPager;

$this->title = 'КЭТ имени Ф.В. Чижова';
?>

<?php if(!empty($models)): ?>
  <?php foreach ($models as $post):?>
      <div class="card" style="margin-top:20px;">
        <div class="card-header">
          <span style="color: #007BFF;font-size: 15px;"><?= $post->name?></span>
        </div>
        <div class="card-body">
            <div class="row">
                <div class="col-4">
                   <img class="card-img-top" src="<?= $post->image?>" alt="Card image cap" style="width: 280px;height: 280px;">
                 </div>
                      <div class="col-8">
                      <p class="card-text" style="font-size: 13px;"> 
                        <h5>Уровень образования/категория/ ученая степень (при наличии)</h5><?= $post->level?>
                        <h5>Квалификация по диплому</h5><?= $post->qualification?>
                        <h5>Общий стаж работы/стаж работы по специальности</h5><?= $post->experience?>
                        <h5>Должность, преподаваемые дисциплины</h5><?= $post->position?>
                        <h5>Дата последней аттестации</h5><?= $post->dateat?>
                        </p>
                 </div>
          </div>
        </div>
    </div>
  <?php endforeach; ?>
<?php endif; ?>

<?php echo LinkPager::widget([
    'pagination' => $pages,
]);?>
