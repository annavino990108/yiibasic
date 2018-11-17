<?php
use yii\helpers\Html;

$this->title = 'КЭТ имени Ф.В. Чижова';
?>
<h1>Расписание</h1>
<div class="accordion" id="accordionExample">
<?php if(!empty($timetable)): ?>
  <?php foreach ($timetable as $ras):?>
    <h2><?= $ras->groupname?></h2>
    <h3><?= $ras->date?></h3>
         <table>
            <tr>
              <td>1</td>
              <td><?= $ras->lesson1?></td>
              <td><?= $ras->cab1?></td>
            </tr>
            <tr>
              <td>2</td>
              <td><?= $ras->lesson2?></td>
              <td><?= $ras->cab2?></td>
            </tr>
            <tr>
              <td>3</td>
              <td><?= $ras->lesson3?></td>
              <td><?= $ras->cab3?></td>
            </tr>
            <tr>
              <td>4</td>
              <td><?= $ras->lesson4?></td>
              <td><?= $ras->cab4?></td>
            </tr>
            <tr>
              <td>5</td>
              <td><?= $ras->lesson5?></td>
              <td><?= $ras->cab5?></td>
            </tr>
            <tr>
              <td>6</td>
              <td><?= $ras->lesson6?></td>
              <td><?= $ras->cab6?></td>
            </tr>
        </table>
        <hr>
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