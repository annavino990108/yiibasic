<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;
use yii\helpers\ArrayHelper;
use app\models\GroupClass;
use app\models\Lessons;
use app\models\Otdelenie;

/* @var $this yii\web\View */
/* @var $model app\models\Timetable */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="timetable-form">

    <?php $form = ActiveForm::begin(); ?>

    <?= $form->field($model, 'date')->widget(\yii\jui\DatePicker::class, [
    'language' => 'ru',
    'dateFormat' => 'yyyy-MM-dd',
]) ?>
    <?= $form->field($model, 'otdelenie')->dropDownList(ArrayHelper::map(Otdelenie::find()->all(),'name','name'),
        ['prompt' => ' ',]); ?>

    <?= $form->field($model, 'groupname')->dropDownList(ArrayHelper::map(GroupClass::find()->all(),'name','name'),
        ['prompt' => ' ',]); ?>


    <table>
        <tr>
            <td> <?= $form->field($model, 'lesson1')->textInput() ?></td>
            <td> <?= $form->field($model, 'prepodavatel1')->textInput() ?></td>
            <td><?= $form->field($model, 'cab1')->textInput() ?></td>
        </tr>
        <tr>
            <td> <?= $form->field($model, 'lesson2')->textInput() ?></td>
            <td> <?= $form->field($model, 'prepodavatel2')->textInput() ?></td>
            <td><?= $form->field($model, 'cab2')->textInput() ?></td>
        </tr>
               <tr>
            <td> <?= $form->field($model, 'lesson3')->textInput() ?></td>
            <td> <?= $form->field($model, 'prepodavatel3')->textInput() ?></td>
            <td><?= $form->field($model, 'cab3')->textInput() ?></td>
        </tr>
               <tr>
            <td> <?= $form->field($model, 'lesson4')->textInput() ?></td>
            <td> <?= $form->field($model, 'prepodavatel4')->textInput() ?></td>
            <td><?= $form->field($model, 'cab4')->textInput() ?></td>
        </tr>
    </table>

    <div class="form-group">
        <?= Html::submitButton('Save', ['class' => 'btn btn-success']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
