<?php

namespace app\modules\admin\controllers;

use yii\web\Controller;
use app\models\News;

/**
 * Default controller for the `admin` module
 */
class DefaultController extends AppAdminController
{
    /**
     * Renders the index view for the module
     * @return string
     */
    public function actionIndex()
    {
    	$news=News::find()->limit(5)->all();
    	//debug($news);
        return $this->render('index',compact('news'));
        return $this->render('index');
    }
}
