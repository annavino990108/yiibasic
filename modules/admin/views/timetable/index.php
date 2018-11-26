<?php

use yii\helpers\Html;
use yii\grid\GridView;

/* @var $this yii\web\View */
/* @var $searchModel app\models\TimetableSearche */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = 'Timetables';
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="timetable-index">

    <h1><?= Html::encode($this->title) ?></h1>
    <?php // echo $this->render('_search', ['model' => $searchModel]); ?>

    <p>
        <?= Html::a('Create Timetable', ['create'], ['class' => 'btn btn-success']) ?>
    </p>

    <?= GridView::widget([
        'dataProvider' => $dataProvider,
        'filterModel' => $searchModel,
        'columns' => [
            ['class' => 'yii\grid\SerialColumn'],

            'id',
            'date',
            'otdelenie',
            'groupname',
            //'lesson1',
            //'cab1',
            //'lesson2',
            //'cab2',
            //'lesson3',
            //'cab3',
            //'lesson4',
            //'cab4',
            //'lesson5',
            //'cab5',
            //'lesson6',
            //'cab6',

            ['class' => 'yii\grid\ActionColumn'],
        ],
    ]); ?>
</div>
