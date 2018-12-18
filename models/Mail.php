<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "mail".
 *
 * @property int $id
 * @property string $date
 * @property string $name
 * @property string $text
 * @property string $otvet
 * @property string $img
 */
class Mail extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'mail';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['date', 'name', 'text'], 'required'],
            [['date'], 'safe'],
            [['name', 'img','status'], 'string', 'max' => 255],
            [['text', 'otvet'], 'string', 'max' => 10000],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'date' => 'Дата',
            'name' => 'ФИО',
            'text' => 'Сообщение',
            'otvet' => 'Ответ',
            'img' => 'Фотография',
            'status'=>'Статус',
        ];
    }
}
