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
        <?= Html::a('Изменить', ['update', 'id' => $model->id], ['class' => 'btn btn-primary']) ?>
        <?= Html::a('Удалить', ['delete', 'id' => $model->id], [
            'class' => 'btn btn-danger',
            'data' => [
                'confirm' => 'Вы уверены, что хотите удалить?',
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
            'teg',
            'description:ntext',
            [
                'attribute'=> 'content',
                'format'=>'html',
            ],
           /* [
                'attribute'=>'imageFile',
                'value'=>"<img src='{$img->getUrl()}'>",
                'format'=>'html',
            ],*/
            'image',
            'file',
            'date',
            'public',
        ],
    ]) ?>

</div>
