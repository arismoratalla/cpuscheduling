<?php

namespace common\models\procurement;

use Yii;

use common\models\procurement\Process;
/**
 * This is the model class for table "tbl_process_result".
 *
 * @property integer $process_result_id
 * @property integer $process_id
 * @property string $session_id
 * @property integer $arrival_time
 * @property integer $begin
 * @property integer $end
 * @property integer $turn_around_time
 * @property integer $waiting_time
 * @property integer $cpu_utilization
 */
class Processresult extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'tbl_process_result';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['process_id', 'arrival_time', 'begin', 'end', 'turn_around_time', 'waiting_time', 'cpu_utilization'], 'required'],
            [['process_id', 'arrival_time', 'begin', 'end', 'turn_around_time', 'waiting_time', 'cpu_utilization'], 'integer'],
            [['session_id'], 'string', 'max' => 12],
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'process_result_id' => 'Process Result ID',
            'process_id' => 'Process ID',
            'session_id' => 'Session ID',
            'arrival_time' => 'Arrival Time',
            'begin' => 'Begin',
            'end' => 'End',
            'turn_around_time' => 'Turn Around Time',
            'waiting_time' => 'Waiting Time',
            'cpu_utilization' => 'Cpu Utilization',
        ];
    }
    
    /**
     * @return \yii\db\ActiveQuery
     */
    public function getProcess()
    {
        return $this->hasOne(Process::className(), ['process_id' => 'process_id']);
    }
    
    static function getAverageWaitingTime($sessionId)
    {
        $result = Processresult::find()->where(['session_id' => $sessionId])->sum('waiting_time');
        $count = Processresult::find()->where(['session_id' => $sessionId])->count();
        if($count){
            $fmt = Yii::$app->formatter;
            return $fmt->asDecimal($result / $count);
        }else
            return '';
    }
    
    static function getAverageTurnaroundTime($sessionId)
    {
        $result = Processresult::find()->where(['session_id' => $sessionId])->sum('turn_around_time');
        $count = Processresult::find()->where(['session_id' => $sessionId])->count();
        if($count){
            $fmt = Yii::$app->formatter;
            return $fmt->asDecimal($result / $count);
        }
        else
            return '';
    }
}
