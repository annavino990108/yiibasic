<?php

namespace app\controllers;

use Yii;
use app\models\News;
use yii\data\Pagination;

class NewsController extends SiteController
{

    public function actionIndex()
    {
        $query = News::find()->where(['public' => Опубликовано]);
    $countQuery = clone $query;
    $pages = new Pagination(['totalCount' => $countQuery->count(),'pageSize' => 1]);
    $models = $query->offset($pages->offset)
        ->limit($pages->limit)
        ->all();

    return $this->render('index', [
         'models' => $models,
         'pages' => $pages,
    ]);
    	//$news=News::find()->orderBy('date DESC')->all();
    	//return $this->render('index',compact('news'));
    }

    public function actionView($id)
    {
       $news=News::findOne($id);

       return $this->render('single',['news'=>$news]);
    }
}
