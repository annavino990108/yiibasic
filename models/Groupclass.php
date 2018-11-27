<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "groupclass".
 *
 * @property int $id
 * @property string $name
 */
class Groupclass extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'groupclass';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['name'], 'required'],
            [['name','otd_id'], 'string', 'max' => 50],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'name' => 'Name',
            'otd_id'=>'Otdelenie',
        ];
    }
}
