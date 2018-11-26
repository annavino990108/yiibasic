<?php

namespace app\models;

use Yii;
use yii\base\Model;
use yii\data\ActiveDataProvider;
use app\models\Timetable;

/**
 * TimetableSearche represents the model behind the search form of `app\models\Timetable`.
 */
class TimetableSearche extends Timetable
{
    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['id', 'cab1', 'cab2', 'cab3', 'cab4', 'cab5', 'cab6'], 'integer'],
            [['date','otdelenie', 'groupname', 'lesson1', 'lesson2', 'lesson3', 'lesson4', 'lesson5', 'lesson6','prepodovatel1','prepodovatel2','prepodovatel3','prepodovatel4'], 'safe'],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function scenarios()
    {
        // bypass scenarios() implementation in the parent class
        return Model::scenarios();
    }

    /**
     * Creates data provider instance with search query applied
     *
     * @param array $params
     *
     * @return ActiveDataProvider
     */
    public function search($params)
    {
        $query = Timetable::find();

        // add conditions that should always apply here

        $dataProvider = new ActiveDataProvider([
            'query' => $query,
        ]);

        $this->load($params);

        if (!$this->validate()) {
            // uncomment the following line if you do not want to return any records when validation fails
            // $query->where('0=1');
            return $dataProvider;
        }

        // grid filtering conditions
        $query->andFilterWhere([
            'id' => $this->id,
            'date' => $this->date,
            'cab1' => $this->cab1,
            'cab2' => $this->cab2,
            'cab3' => $this->cab3,
            'cab4' => $this->cab4,
            'cab5' => $this->cab5,
            'cab6' => $this->cab6,
        ]);

        $query->andFilterWhere(['like', 'groupname', $this->groupname])
            ->andFilterWhere(['like', 'lesson1', $this->lesson1])
            ->andFilterWhere(['like', 'lesson2', $this->lesson2])
            ->andFilterWhere(['like', 'lesson3', $this->lesson3])
            ->andFilterWhere(['like', 'lesson4', $this->lesson4])
            ->andFilterWhere(['like', 'lesson5', $this->lesson5])
            ->andFilterWhere(['like', 'lesson6', $this->lesson6]);

        return $dataProvider;
    }
}
