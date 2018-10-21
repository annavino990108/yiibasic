<?php

use yii\helpers\Html;
use yii\widgets\DetailView;
use app\models\UploadForm;
use yii\imagine\Image;


/* @var $this yii\web\View */
/* @var $model app\models\News */

$this->title = $model->title;
$this->params['breadcrumbs'][] = ['label' => 'News', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="news-view">

    <h1><?= Html::encode($this->title) ?></h1>

    <p>
        <?= Html::a('Update', ['update', 'id' => $model->id], ['class' => 'btn btn-primary']) ?>
        <?= Html::a('Delete', ['delete', 'id' => $model->id], [
            'class' => 'btn btn-danger',
            'data' => [
                'confirm' => 'Are you sure you want to delete this item?',
                'method' => 'post',
            ],
        ]) ?>
    </p>
    <?php $img=$model->getImage();?>
    <?= DetailView::widget([
        'model' => $model,
        'attributes' => [
            'id',
            'title',
            [
                'attribute'=> 'content',
                'format'=>'html',
            ],
            [
                'attribute'=>'imageFile',
                'value'=>"<img src='{$img->getUrl()}'>",
                'format'=>'html',
            ],
            'file',
            'date',
        ],
    ]) ?>

</div>
