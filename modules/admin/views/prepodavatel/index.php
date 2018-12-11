<?php

use yii\helpers\Html;
use yii\grid\GridView;

/* @var $this yii\web\View */
/* @var $searchModel app\models\PrepodavatelSearche */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = 'Prepodavatels';
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="prepodavatel-index">

    <h1><?= Html::encode($this->title) ?></h1>
    <?php // echo $this->render('_search', ['model' => $searchModel]); ?>

    <p>
        <?= Html::a('Create Prepodavatel', ['create'], ['class' => 'btn btn-success']) ?>
    </p>

    <?= GridView::widget([
        'dataProvider' => $dataProvider,
        'filterModel' => $searchModel,
        'columns' => [
            ['class' => 'yii\grid\SerialColumn'],

            'id',
            'name',
            'image',
            'level',
            //'qualification',
            //'experience',
            //'position',
            //'dateat',

            ['class' => 'yii\grid\ActionColumn'],
        ],
    ]); ?>
</div>
