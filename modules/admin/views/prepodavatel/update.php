<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model app\models\Prepodavatel */

$this->title = 'Update Prepodavatel: ' . $model->name;
$this->params['breadcrumbs'][] = ['label' => 'Prepodavatels', 'url' => ['index']];
$this->params['breadcrumbs'][] = ['label' => $model->name, 'url' => ['view', 'id' => $model->id]];
$this->params['breadcrumbs'][] = 'Update';
?>
<div class="prepodavatel-update">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
