<?php

namespace app\controllers;

use Yii;
use app\models\Timetable;
class TimetableController extends SiteController
{

    public function actionIndex()
    {
    	$timetable=Timetable::find()->all();
        //debug($time);
    	return $this->render('index',compact('timetable'));
    }
}