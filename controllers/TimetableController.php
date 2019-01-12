<?php

namespace app\controllers;

use Yii;
class TimetableController extends SiteController
{

    public function actionIndex()
    {
    	return $this->render('index');
    }
}