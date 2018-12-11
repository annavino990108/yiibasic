<?php

use yii\helpers\Html;


/* @var $this yii\web\View */
/* @var $model app\models\Prepodavatel */

$this->title = 'Create Prepodavatel';
$this->params['breadcrumbs'][] = ['label' => 'Prepodavatels', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="prepodavatel-create">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
