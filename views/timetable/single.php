<?php
use yii\helpers\Html;

$this->title = 'КЭТ имени Ф.В. Чижова';
?>
<h1>Расписание</h1>
<div class="accordion" id="accordionExample">

    <h2 style=" color: #007BFF;"><?= $timetable->groupname?></h2>
    <h3><?= $timetable->date?></h3>
         <table class="table table-striped">
            <tr>
              <td>1-2 ур.</td>
              <td><?= $timetable->lesson1?></td>
              <td><?= $timetable->prepodavatel1?></td>
              <td><?= $timetable->cab1?>каб.</td>
            </tr>
            <tr>
              <td>3-4 ур.</td>
              <td><?= $timetable->lesson2?></td>
              <td><?= $timetable->prepodavatel2?></td>
              <td><?= $timetable->cab2?>каб.</td>
            </tr>
            <tr>
              <td>5-6 ур.</td>
              <td><?= $timetable->lesson3?></td>
              <td><?= $timetable->prepodavatel3?></td>
              <td><?= $timetable->cab3?>каб.</td>
            </tr>
            <tr>
              <td>7-8 ур.</td>
              <td><?= $timetable->lesson4?></td>
              <td><?= $timetable->prepodavatel4?></td>
              <td><?= $timetable->cab4?>каб.</td>
            </tr>
        </table>

