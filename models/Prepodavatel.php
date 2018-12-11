<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "prepodavatel".
 *
 * @property int $id
 * @property string $name
 * @property string $image
 * @property string $level
 * @property string $qualification
 * @property string $experience
 * @property string $position
 * @property string $dateat
 */
class Prepodavatel extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'prepodavatel';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['name', 'image', 'level', 'qualification', 'experience', 'position', 'dateat'], 'required'],
            [['name', 'image', 'level', 'qualification', 'experience', 'position', 'dateat'], 'string', 'max' => 255],
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
            'image' => 'Image',
            'level' => 'Level',
            'qualification' => 'Qualification',
            'experience' => 'Experience',
            'position' => 'Position',
            'dateat' => 'Dateat',
        ];
    }
}
