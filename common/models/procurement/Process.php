<?php

namespace common\models\procurement;

use Yii;

/**
 * This is the model class for table "tbl_process".
 *
 * @property integer $process_id
 * @property string $name
 * @property integer $arrival_time
 * @property integer $burst_time
 * @property integer $priority
 * @property string $session_id
 */
class Process extends \yii\db\ActiveRecord
{
    public $numberOfProcess, $timeQuantum; 
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'tbl_process';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['name'], 'required'],
            [['arrival_time', 'burst_time', 'priority'], 'integer'],
            [['name'], 'string', 'max' => 3],
            [['session_id'], 'string', 'max' => 12],
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'process_id' => 'Process ID',
            'name' => 'Name',
            'arrival_time' => 'Arrival Time',
            'burst_time' => 'Burst Time',
            'priority' => 'Priority',
            'session_id' => 'Session ID',
        ];
    }
}
