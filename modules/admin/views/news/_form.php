<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;
use mihaildev\ckeditor\CKEditor;
use mihaildev\elfinder\ElFinder ; 
use mihaildev\elfinder\InputFile;
//use iutbay\yii2kcfinder\KCFinderInputWidget;



/* @var $this yii\web\View */
/* @var $model app\models\News */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="news-form">
    <?php $form = ActiveForm::begin(['options' => ['enctype' => 'multipart/form-data']]); ?>

    <?= $form->field($model, 'title')->textInput(['maxlength' => true]) ?>
    <?= $form->field($model, 'teg')->textInput(['maxlength' => true]) ?>
       <?= $form->field($model, 'date')->widget(\yii\jui\DatePicker::class, [
    'language' => 'ru',
    'dateFormat' => 'yyyy-MM-dd',
]) ?>
    
    <?= $form->field($model, 'description')->textarea(['rows' => 6]) ?>

    <?= $form->field($model, 'content')->widget(CKEditor::className(),[

         'editorOptions' => ElFinder::ckeditorOptions('elfinder',[]),
        ]); ?>
  

   <!-- <?= $form->field($model, 'imageFile')->fileInput()?>!-->
    <?= $form->field($model, 'image')->widget(InputFile::className(), [
    'language'      => 'ru',
    'controller'    => 'elfinder', // вставляем название контроллера, по умолчанию равен elfinder
    'filter'        => 'image',    // фильтр файлов, можно задать массив фильтров https://github.com/Studio-42/elFinder/wiki/Client-configuration-options#wiki-onlyMimes
    'template'      => '<div class="input-group">{input}<span class="input-group-btn">{button}</span></div>',
    'options'       => ['class' => 'form-control'],
    'buttonOptions' => ['class' => 'btn btn-default'],
    'multiple'      => false       // возможность выбора нескольких файлов
]);/*widget(KCFinderInputWidget::className(), [
    'multiple' => true,
]);*/?>
    <div class="row">
        <div class="col-md-4">
    <?= $form->field($model, 'filename')->textInput(['maxlength' => true]) ?>
    </div>
    <div class="col-md-4">
    <?=$form->field($model, 'file')->widget(InputFile::className(), [
    'language'      => 'ru',
    'controller'    => 'elfinder', // вставляем название контроллера, по умолчанию равен elfinder
    //'filter'        => 'image',    // фильтр файлов, можно задать массив фильтров https://github.com/Studio-42/elFinder/wiki/Client-configuration-options#wiki-onlyMimes
    'template'      => '<div class="input-group">{input}<span class="input-group-btn">{button}</span></div>',
    'options'       => ['class' => 'form-control'],
    'buttonOptions' => ['class' => 'btn btn-default'],
    'multiple'      => false       // возможность выбора нескольких файлов
]);?>
</div>
</div>
  <?= $form->field($model, 'public')->radioList([Опубликовано => 'Да', _ => 'Нет'])->label('Опубликовать'); ?>

    <div class="form-group">
        <?= Html::submitButton('Сохранить', ['class' => 'btn btn-success']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
