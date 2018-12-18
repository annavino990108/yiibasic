<?php

use yii\helpers\Html;


/* @var $this yii\web\View */
/* @var $searchModel app\models\UsersSearche */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = 'Admin';
$this->params['breadcrumbs'][] = $this->title;
?>

<div class="row">
	<?php if(Yii::$app->user->identity->role!='Пользователь') { ?>
	<div class="col-md-4">
		<img src="<?=Yii::$app->user->identity->img ?>" alt="..." class="img-thumbnail" width="200px" heigth="200px">
	</div>
	<?php } ?>
	<div class="col">
		<h2 style="color:black;"><?=Yii::$app->user->identity->name ?></h2>
		<h2 style="color:black;"><?=Yii::$app->user->identity->role ?></h2>
		<h2 style="color:black;"><?=Yii::$app->user->identity->email ?></h2>
	</div>
</div>
<hr/>

<?php if(Yii::$app->user->identity->role!='Пользователь') { ?>
<a href="https://docs.google.com/spreadsheets/d/1Az7Vu6TmEl6MJxsW2sFPBnC6V50Lbrw1XsezNuZRPqM/edit#gid=2117270450">Расписание</a>
<h2>Последнии публикации</h2>
	<table>
		<?php if(!empty($news)): ?>
  <?php foreach ($news as $post):?>
          <tr>
          	<td class="col-md-2"><?= $post->date?></td>
          	<td><a href="<?= \yii\helpers\Url::to(['/admin/news/view','id'=>$post['id']])?>"><?= $post->title?></a></td>
          	<td><a href="<?= \yii\helpers\Url::to(['/admin/news/view','id'=>$post['id']])?>"><?= $post->public?></a></td>
          </tr>
  <?php endforeach; ?>
<?php endif; ?>
<?php } ?>

<?php if(Yii::$app->user->identity->role =='Пользователь') { ?>
<h2>Почта</h2>
	<table>
		<?php if(!empty($mail)): ?>
  <?php foreach ($mail as $p):?>
          <tr>
          	<td class="col-md-2"><?= $p->date?></td>
          	<td><a href="<?= \yii\helpers\Url::to(['/admin/mail/view','id'=>$p['id']])?>"><?= $p->text?></a></td>
          	<td><a href="<?= \yii\helpers\Url::to(['/admin/mail/view','id'=>$p['id']])?>"><?= $p->otvet?></a></td>
          </tr>
  <?php endforeach; ?>
<?php endif; ?>	
<?php } ?>

</table>
<style type="text/css">
	tr{
		border-bottom: solid #C4C4C4 1px;
	}
	a{
		color: #000000;
	}
	a:hover{
		color: #007BFF;
	}
	td{
		color: #282C95;
		padding: 5px;
	}
</style>
