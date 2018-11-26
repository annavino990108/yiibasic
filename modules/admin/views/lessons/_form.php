<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model app\models\Lessons */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="lessons-form">

    <?php $form = ActiveForm::begin(); ?>

    <?= $form->field($model, 'name')->textInput(['maxlength' => true]) ?>
    <?= $form->field($model, 'otd1')->radioList([1 => 'yes', 0 => 'No'])->label('1 курс'); ?>
    <?= $form->field($model, 'otd2')->radioList([1 => 'yes', 0 => 'No'])->label('ТТО'); ?>
    <?= $form->field($model, 'otd3')->radioList([1 => 'yes', 0 => 'No'])->label('ЭТО'); ?>
    <?= $form->field($model, 'otd4')->radioList([1 => 'yes', 0 => 'No'])->label('ХТО'); ?>
    <div class="form-group">
        <?= Html::submitButton('Save', ['class' => 'btn btn-success']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
