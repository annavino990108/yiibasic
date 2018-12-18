<?php

namespace app\modules\admin\controllers;

use Yii;
use yii\web\Controller;
use app\models\News;
use app\models\Mail;
use app\madels\User;

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
        $name=Yii::$app->user->identity->name;
        $mail=Mail::find()->where(['name' =>$name , 'status'=>Отправлено])->all();
    	//debug($mail);
        return $this->render('index',[
            'news'=>$news,
            'mail'=>$mail,
        ]);
        return $this->render('index');
    }
}
