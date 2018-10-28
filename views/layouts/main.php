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
          <img src="/images/logo.png" width="60" height="60" alt="">
      </div>
      <div class="col">
        <img src="/images/icon-adress.png">просп. Текстильщиков, 73, Кострома
      </div>
      <div class="col">
        <img src="/images/icon-phone.png">(4942)315191
      </div>
      <div class="col">
        <img src="/images/icon-email.png"> spo-ket@mail.ru
      </div>
      <div class="col">
        <img src="/images/icon-enter.png" style="float: right;">
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
            ['label' => 'Home', 'url' => ['/site/index']],
            ['label' => 'About', 'url' => ['/site/about']],
            ['label' => 'Contact', 'url' => ['/site/contact']],
        ],
    ]);
    NavBar::end();
    ?>

      <?=\app\components\MenuWidget::widget(['tpl'=>'menu'])?>

<div style="text-align: justify;padding-top:50px ">
<h2>Заголовок</h2>
    <div class="container">
        <?= Breadcrumbs::widget([
            'links' => isset($this->params['breadcrumbs']) ? $this->params['breadcrumbs'] : [],
        ]) ?>
        <?= Alert::widget() ?>
        <?= $content ?>
    </div>
</div>
<hr/>
  <div class="card">
    <div class="card-header">
      Дата
    </div>
    <div class="card-body">
        <div class="row">
            <div class="col-4">
               <img class="card-img-top" src=".../100px180/" alt="Card image cap" style="width: 280px;height: 180px;">
             </div>
                  <div class="col-6">
                  <h5 class="card-title">Заголовок</h5>
                  <p class="card-text">Текст</p>
                  <a href="#" class="btn btn-primary">Подробнее...</a>
             </div>
      </div>
    </div>
</div>
  <div class="card">
    <div class="card-header">
      Дата
    </div>
    <div class="card-body">
        <div class="row">
            <div class="col-4">
               <img class="card-img-top" src=".../100px180/" alt="Card image cap" style="width: 280px;height: 180px;">
             </div>
                  <div class="col-6">
                  <h5 class="card-title">Заголовок</h5>
                  <p class="card-text">Текст</p>
                  <a href="#" class="btn btn-primary">Подробнее...</a>
             </div>
      </div>
    </div>
</div>
<hr/>
  <div class="row">
    <div class="col">
      <iframe  src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2127.4134529978965!2d40.90658291514439!3d57.77735954151051!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x46ad45559d8c1e57%3A0xb8351ea7ed1b1eaf!2z0JrQvtGB0YLRgNC-0LzRgdC60L7QuSDRjdC90LXRgNCz0LXRgtC40YfQtdGB0LrQuNC5INGC0LXRhdC90LjQutGD0Lwg0LjQvC4g0KQu0JIu0KfQuNC20L7QstCw!5e0!3m2!1sru!2sru!4v1540233377127" width="600" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>
    </div>
    <div class="col">
    </div>
  </div>
  <hr/>
  <div style="text-align: center;">
    2018
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