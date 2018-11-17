<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;
use yii\helpers\ArrayHelper;
use app\models\GroupClass;
use app\models\Lessons;

/* @var $this yii\web\View */
/* @var $model app\models\Timetable */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="timetable-form">

    <?php $form = ActiveForm::begin(); ?>

    <?= $form->field($model, 'date')->textInput() ?>

    <?= $form->field($model, 'groupname')->dropDownList(ArrayHelper::map(GroupClass::find()->all(),'name','name'),
        ['prompt' => ' ']
    ); ?>
    <?= $form->field($model, 'lesson1')->dropDownList(ArrayHelper::map(Lessons::find()->all(),'name','name'),
        ['prompt' => ' ']
    ); ?>

    <?= $form->field($model, 'cab1')->textInput() ?>

    <?= $form->field($model, 'lesson2')->dropDownList(ArrayHelper::map(Lessons::find()->all(),'name','name'),
        ['prompt' => ' ']
    ); ?>

    <?= $form->field($model, 'cab2')->textInput() ?>

    <?= $form->field($model, 'lesson3')->dropDownList(ArrayHelper::map(Lessons::find()->all(),'name','name'),
        ['prompt' => ' ']
    ); ?>

    <?= $form->field($model, 'cab3')->textInput() ?>

    <?= $form->field($model, 'lesson4')->dropDownList(ArrayHelper::map(Lessons::find()->all(),'name','name'),
        ['prompt' => ' ']
    ); ?>

    <?= $form->field($model, 'cab4')->textInput() ?>

    <?= $form->field($model, 'lesson5')->dropDownList(ArrayHelper::map(Lessons::find()->all(),'name','name'),
        ['prompt' => ' ']
    ); ?>

    <?= $form->field($model, 'cab5')->textInput() ?>

    <?= $form->field($model, 'lesson6')->dropDownList(ArrayHelper::map(Lessons::find()->all(),'name','name'),
        ['prompt' => ' ']
    ); ?>

    <?= $form->field($model, 'cab6')->textInput() ?>

    <div class="form-group">
        <?= Html::submitButton('Save', ['class' => 'btn btn-success']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
