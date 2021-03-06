<?php

/* @var $this yii\web\View */

$this->title = 'КЭТ имени Ф.В. Чижова';
?>
<div class="site-index">
    <div class="row">
        <div class="col">
            <img src="/images/mainimg.jpg" style="width: 540px; height: 380px;">
        </div>
        <div class="col">
<div style="font-size: 20px;">
 Вы обратились к сайту ОГБПОУ «Костромской энергетический техникум имени Ф. В. Чижова» и мы приветствуем Вас.<br/>

КЭТ — это серьёзная профессиональная подготовка и разносторонняя студенческая жизнь, это лекции, семинары и практика на предприятиях Костромы, Костромской и Московской областей.<br/>

КЭТ — это техническое творчество и научные исследования студентов, участие в выставках и выступления на студенческих конференциях, дипломы победителей конкурсов профессионального мастерства и предметных олимпиад.<br/>

КЭТ — это спортивные достижения и победы команды КВН, занятия в творческих студиях, спортивные секции в собственном спортивном комплексе, общежитие, столовая, учебно-производственные мастерские и лаборатории, это история длиннее века и её музей.<br/>

КЭТ — это медаль «Европейское качество» и победа в конкурсе «100 лучших ссузов России».<br/>

КЭТ - это обучение по 7 действительно востребованным на рынке труда специальностям.
</div>
</div>
</div>
</div>

<hr/>

<?php if(!empty($news)): ?>
  <?php foreach ($news as $post):?>
      <div class="card" style="margin-top:20px;">
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
<?php endif; ?>

<hr/>
<a href="/news/index"><button type="button" class="btn btn-primary btn-lg">Все новости</button></a>
