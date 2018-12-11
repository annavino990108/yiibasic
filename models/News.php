<?php

namespace app\models;

use Yii;
use yii\base\Model;
use yii\web\UploadedFile;
use yii\imagine\Image;
/**
 * This is the model class for table "news".
 *
 * @property int $id
 * @property string $title
 * @property string $content
 * @property string $image
 * @property string $file
 * @property string $date
 */
class News extends \yii\db\ActiveRecord
{
  /**
     * @var UploadedFile
     */
    public $imageFile;
      public function behaviors()
    {
        return [
            'image' => [
                'class' => 'rico\yii2images\behaviors\ImageBehave',
            ]
        ];
    }

    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'news';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
          [['description','title'],'required'],
          [['description','title','content','teg'],'string'],
          [['date'],'date','format'=>'php:Y-m-d'],
          [['date'],'default','value'=>date('Y-m-d')],
          [['title','file','image'],'string','max'=>255],
          [['imageFile'], 'file', 'extensions' => 'png, jpg,jpeg'],
          [['public'],'string','max'=>50],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'title' => 'Title',
            'teg'=>'Teg',
            'description' => 'Description',
            'content' => 'Content',
            'imageFile' => 'Image',
            'file' => 'File',
            'date' => 'Date',
        ];
    }

    
    public function upload()
    {
        if ($this->validate()) {
            $path='upload/store/' . $this->imageFile->baseName . '.' . $this->imageFile->extension;
            $this->imageFile->saveAs($path);
           $this->attachImage($path);
            @unlink($path);
            return true;
        } else {
            return false;
        }
    }

}
