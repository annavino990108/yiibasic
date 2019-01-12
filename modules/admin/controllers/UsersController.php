<?php

namespace app\modules\admin\controllers;

use Yii;
use app\models\Users;
use app\models\UsersSearche;
use yii\web\Controller;
use yii\web\NotFoundHttpException;
use yii\filters\VerbFilter;

/**
 * UsersController implements the CRUD actions for Users model.
 */
class UsersController extends AppAdminController
{
    /**
     * {@inheritdoc}
     */
   /* public function behaviors()
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
     * Lists all Users models.
     * @return mixed
     */
    public function actionIndex()
    {
        $user=Yii::$app->user->identity->role;
        if($user==Администратор){
        $searchModel = new UsersSearche();
        $dataProvider = $searchModel->search(Yii::$app->request->queryParams);

        return $this->render('index', [
            'searchModel' => $searchModel,
            'dataProvider' => $dataProvider,
        ]);
    }
    }

    /**
     * Displays a single Users model.
     * @param integer $id
     * @return mixed
     * @throws NotFoundHttpException if the model cannot be found
     */
    public function actionView($id)
    {
        $user=Yii::$app->user->identity->role;
        if($user==Администратор){
        return $this->render('view', [
            'model' => $this->findModel($id),
        ]);}
    }

    /**
     * Creates a new Users model.
     * If creation is successful, the browser will be redirected to the 'view' page.
     * @return mixed
     */
    public function actionCreate()
    {
        $user=Yii::$app->user->identity->role;
        if($user==Администратор){
        $model = new Users();

        if ($model->load(Yii::$app->request->post())){
            $model->password=Yii::$app->getSecurity()->generatePasswordHash($model->password);
        
        if ( $model->save()) {
            return $this->redirect(['view', 'id' => $model->id]);
        }}

        return $this->render('create', [
            'model' => $model,
        ]);}
    }

    /**
     * Updates an existing Users model.
     * If update is successful, the browser will be redirected to the 'view' page.
     * @param integer $id
     * @return mixed
     * @throws NotFoundHttpException if the model cannot be found
     */
    public function actionUpdate($id)
    {$user=Yii::$app->user->identity->role;
        if($user==Администратор){
        $model = $this->findModel($id);

       if ($model->load(Yii::$app->request->post())){
            $model->password=Yii::$app->getSecurity()->generatePasswordHash($model->password);
        if ( $model->save()) {
            return $this->redirect(['view', 'id' => $model->id]);
        }}

        return $this->render('update', [
            'model' => $model,
        ]);
    }}

    /**
     * Deletes an existing Users model.
     * If deletion is successful, the browser will be redirected to the 'index' page.
     * @param integer $id
     * @return mixed
     * @throws NotFoundHttpException if the model cannot be found
     */
    public function actionDelete($id)
    {$user=Yii::$app->user->identity->role;
        if($user==Администратор){
        $this->findModel($id)->delete();

        return $this->redirect(['index']);
    }}

    /**
     * Finds the Users model based on its primary key value.
     * If the model is not found, a 404 HTTP exception will be thrown.
     * @param integer $id
     * @return Users the loaded model
     * @throws NotFoundHttpException if the model cannot be found
     */
    protected function findModel($id)
    {$user=Yii::$app->user->identity->role;
        if($user==Администратор){
        if (($model = Users::findOne($id)) !== null) {
            return $model;
        }

        throw new NotFoundHttpException('The requested page does not exist.');
    }}
}
