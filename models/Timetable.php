<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "timetable".
 *
 * @property int $id
 * @property string $date
 * @property string $groupname
 * @property string $lesson1
 * @property int $cab1
 * @property string $lesson2
 * @property int $cab2
 * @property string $lesson3
 * @property int $cab3
 * @property string $lesson4
 * @property int $cab4
 * @property string $lesson5
 * @property int $cab5
 * @property string $lesson6
 * @property int $cab6
 */
class Timetable extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'timetable';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['date', 'groupname'], 'required'],
            [['date'], 'safe'],
            [['cab1', 'cab2', 'cab3', 'cab4', 'cab5', 'cab6'], 'integer'],
            [['otdelenie','groupname', 'lesson1', 'lesson2', 'lesson3', 'lesson4', 'lesson5', 'lesson6','prepodavatel1','prepodavatel2','prepodavatel3','prepodavatel4'], 'string', 'max' => 50],
            [['date'],'date','format'=>'php:Y-m-d'],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'date' => 'Date',
            'groupname' => 'Groupname',
            'lesson1' => 'Lesson1',
            'cab1' => 'Cab1',
            'lesson2' => 'Lesson2',
            'cab2' => 'Cab2',
            'lesson3' => 'Lesson3',
            'cab3' => 'Cab3',
            'lesson4' => 'Lesson4',
            'cab4' => 'Cab4',
            'lesson5' => 'Lesson5',
            'cab5' => 'Cab5',
            'lesson6' => 'Lesson6',
            'cab6' => 'Cab6',
        ];
    }
}
