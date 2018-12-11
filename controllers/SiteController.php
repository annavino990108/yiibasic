<?php

namespace app\controllers;

use Yii;
use yii\filters\AccessControl;
use yii\web\Controller;
use yii\web\Response;
use yii\filters\VerbFilter;
use yii\helpers\Html;
use app\models\LoginForm;
use app\models\ContactForm;
use app\models\News;
use app\models\SearchForm;
use app\models\Prepodavatel;
use yii\data\Pagination;


class SiteController extends Controller
{
    /**
     * {@inheritdoc}
     */
    public function behaviors()
    {
        return [
            'access' => [
                'class' => AccessControl::className(),
                'only' => ['logout'],
                'rules' => [
                    [
                        'actions' => ['logout'],
                        'allow' => true,
                        'roles' => ['@'],
                    ],
                ],
            ],
            'verbs' => [
                'class' => VerbFilter::className(),
                'actions' => [
                    'logout' => ['post'],
                ],
            ],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function beforeAction($action)
    {
        $model = new SearchForm();
        if($model->load(Yii::$app->request->post()) && $model->validate())
        {
            $q = Html::encode($model->q);
            return $this->redirect(Yii::$app->urlManager->createUrl(['site/search', 'q'=>$q]));
        }

        return true;
    }
    public function actions()
    {
        return [
            'error' => [
                'class' => 'yii\web\ErrorAction',
            ],
            'captcha' => [
                'class' => 'yii\captcha\CaptchaAction',
                'fixedVerifyCode' => YII_ENV_TEST ? 'testme' : null,
            ],
        ];
    }

    /**
     * Displays homepage.
     *
     * @return string
     */
    public function actionIndex()
    {
        $news=News::find()->limit(3)->where(['public' => 1])->all();
        return $this->render('index',compact('news'));
        return $this->render('index');
    }

    /**
     * Login action.
     *
     * @return Response|string
     */
    public function actionLogin()
    {
        if (!Yii::$app->user->isGuest) {
            return $this->goHome();
        }

        $model = new LoginForm();
        if ($model->load(Yii::$app->request->post()) && $model->login()) {
            return $this->goBack();
        }

        $model->password = '';
        return $this->render('login', [
            'model' => $model,
        ]);
    }

    /**
     * Logout action.
     *
     * @return Response
     */
    public function actionLogout()
    {
        Yii::$app->user->logout();

        return $this->goHome();
    }

    /**
     * Displays contact page.
     *
     * @return Response|string
     */
    public function actionContact()
    {
        $model = new ContactForm();
        if ($model->load(Yii::$app->request->post()) && $model->contact(Yii::$app->params['adminEmail'])) {
            Yii::$app->session->setFlash('contactFormSubmitted');

            return $this->refresh();
        }
        return $this->render('contact', [
            'model' => $model,
        ]);
    }

    /**
     * Displays about page.
     *
     * @return string
     */
    public function actionAbout()
    {
        return $this->render('about');
    }
     public function actionPrepod()
    {
    $query = Prepodavatel::find();
  $countQuery = clone $query;
    $pages = new Pagination(['totalCount' => $countQuery->count(),'pageSize' => 10]);
    $models = $query->offset($pages->offset)
        ->limit($pages->limit)
        ->all();

    return $this->render('prepod', [
         'models' => $models,
        'pages' => $pages,
    ]);
}


    public function actionSearch()
    {
        $q = Yii::$app->getRequest()->getQueryParam('q');
        $query=News::find()->where(['public' => 1])->where(['teg'=>$q]);
          $pages = new Pagination(['totalCount' => $query->count(),'pageSize' => 1]);
    $models = $query->offset($pages->offset)
        ->limit($pages->limit)
        ->all();

    return $this->render('search', [
         'models' => $models,
         'pages' => $pages,
         'q'=>$q,
    ]);

    }
}
