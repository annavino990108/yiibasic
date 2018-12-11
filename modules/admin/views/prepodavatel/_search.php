<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model app\models\PrepodavatelSearche */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="prepodavatel-search">

    <?php $form = ActiveForm::begin([
        'action' => ['index'],
        'method' => 'get',
    ]); ?>

    <?= $form->field($model, 'id') ?>

    <?= $form->field($model, 'name') ?>

    <?= $form->field($model, 'image') ?>

    <?= $form->field($model, 'level') ?>

    <?php // echo $form->field($model, 'qualification') ?>

    <?php // echo $form->field($model, 'experience') ?>

    <?php // echo $form->field($model, 'position') ?>

    <?php // echo $form->field($model, 'dateat') ?>

    <div class="form-group">
        <?= Html::submitButton('Search', ['class' => 'btn btn-primary']) ?>
        <?= Html::resetButton('Reset', ['class' => 'btn btn-default']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
