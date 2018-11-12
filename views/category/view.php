<?php
use yii\helpers\Html;
use app\models\Pages;

$this->title = $pages->title;
$this->params['breadcrumbs'][] = $this->title;
?>
<hr/>
<h1><?= $pages->title?></h1>
<p><?=$pages->content?></p>