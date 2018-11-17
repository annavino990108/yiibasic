<?php

use yii\helpers\Html;


/* @var $this yii\web\View */
/* @var $model app\models\Groupclass */

$this->title = 'Create Groupclass';
$this->params['breadcrumbs'][] = ['label' => 'Groupclasses', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="groupclass-create">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
