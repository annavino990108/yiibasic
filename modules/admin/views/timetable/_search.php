<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model app\models\TimetableSearche */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="timetable-search">

    <?php $form = ActiveForm::begin([
        'action' => ['index'],
        'method' => 'get',
    ]); ?>

    <?= $form->field($model, 'id') ?>

    <?= $form->field($model, 'date')?>
    <?= $form->field($model, 'otdelenie') ?>

    <?= $form->field($model, 'groupname') ?>

    <?= $form->field($model, 'lesson1') ?>

    <?= $form->field($model, 'cab1') ?>

    <?php // echo $form->field($model, 'lesson2') ?>

    <?php // echo $form->field($model, 'cab2') ?>

    <?php // echo $form->field($model, 'lesson3') ?>

    <?php // echo $form->field($model, 'cab3') ?>

    <?php // echo $form->field($model, 'lesson4') ?>

    <?php // echo $form->field($model, 'cab4') ?>

    <?php // echo $form->field($model, 'lesson5') ?>

    <?php // echo $form->field($model, 'cab5') ?>

    <?php // echo $form->field($model, 'lesson6') ?>

    <?php // echo $form->field($model, 'cab6') ?>

    <div class="form-group">
        <?= Html::submitButton('Search', ['class' => 'btn btn-primary']) ?>
        <?= Html::resetButton('Reset', ['class' => 'btn btn-default']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
