<?php

namespace app\modules\admin\controllers;

use Yii;
use app\models\News;
use app\models\NewsSearche;
use yii\web\Controller;
use yii\web\NotFoundHttpException;
use yii\filters\VerbFilter;
use app\models\UploadForm;
use yii\web\UploadedFile;
use yii\imagine\Image;


/**
 * NewsController implements the CRUD actions for News model.
 */
class NewsController extends AppAdminController
{

    /**
     * {@inheritdoc}
     */
    public function behaviors()
    {
        return [
            'verbs' => [
                'class' => VerbFilter::className(),
                'actions' => [
                    'delete' => ['POST'],
                ],
            ],
        ];
    }

    /**
     * Lists all News models.
     * @return mixed
     */
    public function actionIndex()
    {  $user=Yii::$app->user->identity->role;
        if($user!=Пользователь){
        $searchModel = new NewsSearche();
        $dataProvider = $searchModel->search(Yii::$app->request->queryParams);

        return $this->render('index', [
            'searchModel' => $searchModel,
            'dataProvider' => $dataProvider,
        ]);}
    }

    /**
     * Displays a single News model.
     * @param integer $id
     * @return mixed
     * @throws NotFoundHttpException if the model cannot be found
     */
    public function actionView($id)
    {  $user=Yii::$app->user->identity->role;
        if($user!=Пользователь){
        return $this->render('view', [
            'model' => $this->findModel($id),
        ]);}
    }

    /**
     * Creates a new News model.
     * If creation is successful, the browser will be redirected to the 'view' page.
     * @return mixed
     */
    public function actionCreate()
    {  $user=Yii::$app->user->identity->role;
        if($user!=Пользователь){
        $model = new News();

        if ($model->load(Yii::$app->request->post()) && $model->save())
        {
                 $model->imageFile = UploadedFile::getInstance($model, 'imageFile');
            if ($model->imageFile)
             {
                $model->upload();          
             }
            return $this->redirect(['view', 'id' => $model->id]);
        }

        return $this->render('create', [
            'model' => $model,
        ]);}
    }

    /**
     * Updates an existing News model.
     * If update is successful, the browser will be redirected to the 'view' page.
     * @param integer $id
     * @return mixed
     * @throws NotFoundHttpException if the model cannot be found
     */
    public function actionUpdate($id)
    {  $user=Yii::$app->user->identity->role;
        if($user!=Пользователь){
        $model = $this->findModel($id);

        if ($model->load(Yii::$app->request->post()) && $model->save()) {

              $model->imageFile = UploadedFile::getInstance($model, 'imageFile');
            if ($model->imageFile)
             {
                $model->upload();          
             }
           // var_dump($_FILES);
              return $this->redirect(['view', 'id' => $model->id]);
        }
        else
        {
            return $this->render('update', [
                'model' => $model,
            ]);
        }}
    }

    /**
     * Deletes an existing News model.
     * If deletion is successful, the browser will be redirected to the 'index' page.
     * @param integer $id
     * @return mixed
     * @throws NotFoundHttpException if the model cannot be found
     */
    public function actionDelete($id)
    {  $user=Yii::$app->user->identity->role;
        if($user!=Пользователь){
        $this->findModel($id)->delete();

        return $this->redirect(['index']);}
    }

    /**
     * Finds the News model based on its primary key value.
     * If the model is not found, a 404 HTTP exception will be thrown.
     * @param integer $id
     * @return News the loaded model
     * @throws NotFoundHttpException if the model cannot be found
     */
    protected function findModel($id)
    {  $user=Yii::$app->user->identity->role;
        if($user!=Пользователь){
        if (($model = News::findOne($id)) !== null) {
            return $model;
        }

        throw new NotFoundHttpException('The requested page does not exist.');
    }}
}
