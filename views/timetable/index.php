<?php
use yii\helpers\Html;

$this->title = 'КЭТ имени Ф.В. Чижова';
?>
<h1>Расписание</h1>
<div class="accordion" id="accordionExample">
<?php if(!empty($timetable)): ?>
  <?php foreach ($timetable as $ras):?>

    <a href="<?= \yii\helpers\Url::to(['/timetable/view','id'=>$ras['id']])?>" >
      <h2 style=" color: #007BFF;"><?= $ras->groupname?> - <?= $ras->date?></h2>
</a>

  <?php endforeach; ?>
<?php endif; ?> 
<style type="text/css">

  table, td {
    border: 1px solid black;
  }

  td {
    padding: 5px;
}
</style> 