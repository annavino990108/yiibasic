<?php

use yii\helpers\Html;
use yii\grid\GridView;

/* @var $this yii\web\View */
/* @var $searchModel app\models\GroupclassSearche */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = 'Groupclasses';
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="groupclass-index">

    <h1><?= Html::encode($this->title) ?></h1>
    <?php // echo $this->render('_search', ['model' => $searchModel]); ?>

    <p>
        <?= Html::a('Create Groupclass', ['create'], ['class' => 'btn btn-success']) ?>
    </p>

    <?= GridView::widget([
        'dataProvider' => $dataProvider,
        'filterModel' => $searchModel,
        'columns' => [
            ['class' => 'yii\grid\SerialColumn'],

            'id',
            'name',
            'otdelenie',
            'groupname',

            ['class' => 'yii\grid\ActionColumn'],
        ],
    ]); ?>
</div>
