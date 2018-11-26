<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;
use yii\helpers\ArrayHelper;
use app\models\Otdelenie;

/* @var $this yii\web\View */
/* @var $model app\models\Groupclass */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="groupclass-form">

    <?php $form = ActiveForm::begin(); ?>

    <?= $form->field($model, 'name')->textInput(['maxlength' => true]) ?>
    <?= $form->field($model, 'otdelenie')->dropDownList(ArrayHelper::map(Otdelenie::find()->all(),'name','name'),
        ['prompt' => ' ']
    ); ?>

    <div class="form-group">
        <?= Html::submitButton('Save', ['class' => 'btn btn-success']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
