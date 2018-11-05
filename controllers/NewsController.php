<?php

namespace app\controllers;

use Yii;
use app\models\News;
class NewsController extends SiteController
{

    public function actionIndex()
    {
    	$news=News::find()->all();
    	return $this->render('index',compact('news'));
    }

    public function actionView($id)
    {
       $news=News::findOne($id);

       return $this->render('single',['news'=>$news]);
    }
}
