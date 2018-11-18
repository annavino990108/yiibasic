<?php

/* @var $this \yii\web\View */
/* @var $content string */

use app\widgets\Alert;
use yii\helpers\Html;
use yii\bootstrap\Nav;
use yii\bootstrap\NavBar;
use yii\widgets\Breadcrumbs;
use app\assets\AppAsset;

AppAsset::register($this);
?>
<?php $this->beginPage() ?>
<!doctype html>
<html lang="<?= Yii::$app->language ?>">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta charset="<?= Yii::$app->charset ?>">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <link rel="stylesheet" href="media.css"
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
     <?= Html::csrfMetaTags() ?>
    <title><?= Html::encode($this->title) ?></title>
    <?php $this->head() ?>
  </head>
  <body style="background-color:#F8F9FB ">
    <?php $this->beginBody() ?>

    <div class="container center" style="background-color: #FFFFFF;">
    <div class="row" style="background-color:#F8F9FA;text-align: center; padding-top: 15px; ">
      <div class="col">
          <img src="/images/logo.png" width="80" height="80" alt="">
      </div>
      <div class="col">
        <img src="/images/icon1.png">просп. Текстильщиков, 73, Кострома
      </div>
      <div class="col">
        <img src="/images/icon2.png">(4942)315191
      </div>
      <div class="col">
        <img src="/images/icon4.png" width="60" height="60"> spo-ket@mail.ru
      </div>
      <div class="col">
        <img src="/images/icon5.png" style="float: right;">
      </div>
        <div class="col" style="font-size: 20px;">
        <?php echo Nav::widget(['items' => [Yii::$app->user->isGuest ? (
                ['label' => 'Login', 'url' => ['/admin']]
            ) : (
                ['label' => 'Admin', 'url' => ['/admin']]
            )],])?>
          
      </div>
    </div>


    <div class="conteiner" style="text-align: center;padding-top: 20px;padding-bottom: 20px; font-size: 50px; color: #282C95;">
      Костромской энергетический<br/>техникум имени Ф.В.Чижова
    </div>

 <?php
    NavBar::begin([
       // 'brandLabel' => Yii::$app->name,
       // 'brandUrl' => Yii::$app->homeUrl,
        'options' => [
            'class' => 'navbar navbar-expand-lg navbar-light bg-light',
        ],
    ]);
    echo Nav::widget([
        'options' => ['class' => 'navbar-nav navbar-right',
        'style'=>'font-size:15px;'],
        'items' => [
            ['label' => 'Главная', 'url' => ['/site/index']],
            ['label' => 'Расписание', 'url' => ['/timetable/index']],
        ],
    ]);
    NavBar::end();
    ?>
<!--Menu!-->
<div class="container">
  <div class="row">
    <div class="col-md-0">
  <a href="/site/index"> <img src="/images/icon6.png"></a>
</div>
<div class="col">
     <?=\app\components\MenuWidget::widget(['tpl'=>'menu'])?>
   </div>
 </div>
   </div>
<!--Menu!-->

<div style="text-align: justify;padding-top:50px ">
    <div class="container" style="font-size: 15px;">
        <?= Breadcrumbs::widget([
            'links' => isset($this->params['breadcrumbs']) ? $this->params['breadcrumbs'] : [],
        ]) ?>
        <?= Alert::widget() ?>
        <?= $content ?>
    </div>
</div>


<hr/>
  <div class="row">
    <div class="col">
      <iframe  src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2127.4134529978965!2d40.90658291514439!3d57.77735954151051!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x46ad45559d8c1e57%3A0xb8351ea7ed1b1eaf!2z0JrQvtGB0YLRgNC-0LzRgdC60L7QuSDRjdC90LXRgNCz0LXRgtC40YfQtdGB0LrQuNC5INGC0LXRhdC90LjQutGD0Lwg0LjQvC4g0KQu0JIu0KfQuNC20L7QstCw!5e0!3m2!1sru!2sru!4v1540233377127" width="600" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>
    </div>
    <div class="col">
      <h3>Контактная информация:</h3>
      <ul style="list-style: none; font-size: 15px;">
        <li>Справочные телефоны: (4942) 315191, (4942) 315026</li>
        <li>Адрес электронной почты Техникума: spo-ket@mail.ru</li>
      </ul>
      <hr>
      <a href="http://www.eduportal44.ru/sites/Noko/_layouts/15/start.aspx#/SitePages/%D0%94%D0%BE%D0%BC%D0%B0%D1%88%D0%BD%D1%8F%D1%8F.aspx">
        <img src="/images/noko.jpg" width="100" height="100" alt="">
       <span style="font-size: 15px;">Независимая оценка качества образования</span>
      </a><br>
      <a href="http://bus.gov.ru/pub/home">
        <img src="/images/rez.jpg" width="100" height="100" alt="">
       <span style="font-size: 15px;">Результаты НОКО</span>
      </a><br>
      <a href="http://www.gto.ru/">
        <img src="/images/gto.jpg" width="100" height="100" alt="">
       <span style="font-size: 15px;"> Всероссийский физкультурно-спортивный комплекс</span>
      </a>
    </div>
  </div>
  <hr/>
  <div style="text-align: center; font-size: 15px; padding-top: 20px; padding-bottom: 20px;">
    © 1894-2018г. ОГБПОУ «Костромской энергетический техникум имени Ф. В. Чижова»
  </div>
</div>
    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script  src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
    <script src="js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
    <?php $this->endBody() ?>
  </body>
</html>
<?php $this->endPage() ?>