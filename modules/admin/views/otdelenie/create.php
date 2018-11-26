<?php

use yii\helpers\Html;


/* @var $this yii\web\View */
/* @var $model app\models\Otdelenie */

$this->title = 'Create Otdelenie';
$this->params['breadcrumbs'][] = ['label' => 'Otdelenies', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="otdelenie-create">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
