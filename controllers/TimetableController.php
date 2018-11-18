<?php

namespace app\controllers;

use Yii;
use app\models\Timetable;
class TimetableController extends SiteController
{

    public function actionIndex()
    {
    	$timetable=Timetable::find()->all();
       // debug($timetable);
    	return $this->render('index',compact('timetable'));
    }

    public function actionView($id)
    {
       $timetable=Timetable::findOne($id);

       return $this->render('single',['timetable'=>$timetable]);
    }
}