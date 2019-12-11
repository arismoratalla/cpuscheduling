<?php

namespace common\models\procurement;

use Yii;
use yii\base\Model;
use yii\data\ActiveDataProvider;
use common\models\procurement\Process;

/**
 * ProcessSearch represents the model behind the search form about `common\models\procurement\Process`.
 */
class ProcessSearch extends Process
{
    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['process_id', 'arrival_time', 'burst_time', 'priority'], 'integer'],
        ];
    }

    /**
     * @inheritdoc
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
        $query = Process::find();

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
            'process_id' => $this->process_id,
            'arrival_time' => $this->arrival_time,
            'burst_time' => $this->burst_time,
            'priority' => $this->priority,
            'numberOfProcess' => $this->numberOfProcess,
        ]);

        $query->andFilterWhere(['<=', 'numberOfProcess', $this->process_id]);

        
        return $dataProvider;
    }
}
