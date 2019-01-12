<?php

namespace app\modules\admin\controllers;

use Yii;
use yii\web\Controller;
use app\models\News;
use app\models\User;
use app\models\ContactForm;
use yii\web\Request;

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
        $role= Yii::$app->user->identity->role;
        if ($role != 'Пользователь'){
    	$news=News::find()->limit(5)->all();
        $name=Yii::$app->user->identity->name;
    	//debug($mail);
        return $this->render('index',[
            'news'=>$news,
        ]);
    }
    if ($role == 'Пользователь'){
           return  Yii::$app->response->redirect(['site/index']); } 
    }
     public function actionContact()
    {
       /* Для страницы контактов можно использовать свой слой */
       $this->layout = 'admin';
       
        /* Создаем экземпляр класса */
        $model = new ContactForm();
        /* получаем данные из формы и запускаем функцию отправки contact, если все хорошо, выводим сообщение об удачной отправке сообщения на почту */
        if ($model->load(Yii::$app->request->post()) && $model->contact(Yii::$app->params['emailto'])) {
            Yii::$app->session->setFlash('contactFormSubmitted');
            return $this->refresh();
        /* иначе выводим форму обратной связи */
        } else {
            return $this->render('contact', [
                'model' => $model,
            ]);
        }
    }
}
