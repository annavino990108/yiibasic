<?php

namespace app\controllers;

use Yii;
use app\models\Category;
use app\models\Pages;
class CategoryController extends SiteController
{

    public function actionIndex()
    {

    }

    public function actionView($id)
    {
       $id=Yii::$app->request->get('id');
       // debug($id);
       $pages=Pages::find()->where(['category_id'=>$id])->one();
       return $this->render('view',compact('pages'));
    }
}
