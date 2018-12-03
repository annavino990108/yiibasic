<?php

use yii\helpers\Html;


/* @var $this yii\web\View */
/* @var $searchModel app\models\UsersSearche */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = 'Admin';
$this->params['breadcrumbs'][] = $this->title;
?>

<div class="row">
	<div class="col-md-4">
		<img src="<?=Yii::$app->user->identity->img ?>" alt="..." class="img-thumbnail" width="200px" heigth="200px">
	</div>
	<div class="col">
		<h2 style="color:black;"><?=Yii::$app->user->identity->name ?></h2>
		<h2 style="color:black;"><?=Yii::$app->user->identity->role ?></h2>
		<h2 style="color:black;"><?=Yii::$app->user->identity->email ?></h2>
	</div>
</div>
<hr/>
<a href="https://docs.google.com/spreadsheets/d/1Az7Vu6TmEl6MJxsW2sFPBnC6V50Lbrw1XsezNuZRPqM/edit#gid=2117270450">Расписание</a>
<h2>Последнии публикации</h2>
	<table>
		<?php if(!empty($news)): ?>
  <?php foreach ($news as $post):?>
          <tr>
          	<td class="col-md-2"><?= $post->date?></td>
          	<td><a href="<?= \yii\helpers\Url::to(['/admin/news/view','id'=>$post['id']])?>"><?= $post->title?></a></td>
          </tr>
  <?php endforeach; ?>
<?php endif; ?>
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
