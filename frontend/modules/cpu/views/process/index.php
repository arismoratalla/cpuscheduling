<?php
use yii\data\ActiveDataProvider;

use yii\helpers\ArrayHelper;
use yii\helpers\Html;
use yii\helpers\Url;
use yii\web\JsExpression;

use kartik\detail\DetailView;
use kartik\editable\Editable; 
use kartik\grid\GridView;
use kartik\select2\Select2;
use yii\widgets\Pjax;

use common\models\procurement\Processresult;

/* @var $this yii\web\View */
/* @var $searchModel common\models\cpu\ProcessSearch */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = 'Processes';
$this->params['breadcrumbs'][] = $this->title;

?>


<div class="process-index">

    <h1><?= Html::encode('CPU Process Simulation') ?></h1>
    <br><br>
    <?php // echo $this->render('_search', ['model' => $searchModel]); ?>

    <p>
        <!--?= Html::a('Create Process', ['create'], ['class' => 'btn btn-success']) ?-->
    </p>
        
    <?= GridView::widget([
            'dataProvider' => $processDataProvider,
            //'filterModel' => $searchModel,
            'id'=>'processes', //additional
    
            'containerOptions' => ['style' => 'overflow: auto'], // only set when $responsive = false
            'headerRowOptions' => ['class' => 'kartik-sheet-style'],
            'filterRowOptions' => ['class' => 'kartik-sheet-style'],
            'pjax' => true, // pjax is set to always true for this demo
            // set left panel buttons
            'panel' => [
                'heading'=>'<h3 class="panel-title">INPUT: Process Requirements</h3>('.$sessionId.')',
                'type' => GridView::TYPE_PRIMARY,
                'before'=>'',
                
                /*Html::button('Start Simulation', ['onClick'=> 'onFcfs($("#number-of-process",).val(),"'.$sessionId.'");','value' => Url::to(['process/start']), 'title' => 'ProcessSimulation', 'class' => 'btn btn-info', 'style'=>'margin-right: 6px;', 'id'=>'buttonStart']),
                'after'=>false,*/
            ],
            'toolbar' => 
                ['content' =>
                    Select2::widget([
                        'name' => 'number_of_process',
                        'value' => $numberOfProcess,
                        'id' => 'number-of-process',
                        'data' => ['1' => '1', '2' => '2', '3' => '3', '4' => '4', '5' => '5'],
                        'options' => [
                            'placeholder' => 'Number of Process',
                            'multiple' => false,
                        ],
                    ])],
                    
            'columns' => [
                [
                    'attribute' => 'process_id',
                    'headerOptions' => ['style' => 'text-align: center'],
                    'contentOptions' => ['style' => 'text-align: center; font-weight: bold;'],
                    'value'=>function ($model, $key, $index, $widget) { 
                                return $model->name;
                            },
                ],
                [
                    'class'=>'kartik\grid\EditableColumn',
                    'attribute'=>'arrival_time',
                    'header'=>'Arrival Time',
                    'refreshGrid'=>true,
                    'editableOptions'=> function ($model , $key , $index) {
                        return [
                            'options' => ['id' => $index . '_' . $model->arrival_time. '_' . Yii::$app->security->generateRandomString(8)],
                            'placement'=>'left',
                            'name'=>'arrival_time',
                            'asPopover' => true,
                            'value' => $model->arrival_time,
                            'inputType' => \kartik\editable\Editable::INPUT_TEXT,
                            'formOptions'=>['action' => ['/cpu/process/updatearrivaltime']], // point to the new action
                        ];
                    },
                    'hAlign'=>'center',
                    'vAlign'=>'left',
                    'width'=>'250px',
                ],
                [
                    'class'=>'kartik\grid\EditableColumn',
                    'attribute'=>'burst_time',
                    'header'=>'Burst Time',
                    'refreshGrid'=>true,
                    'editableOptions'=> function ($model , $key , $index) {
                        return [
                            'options' => ['id' => $index . '_' . $model->burst_time. '_' . Yii::$app->security->generateRandomString(8)],
                            'placement'=>'left',
                            'name'=>'burst_time',
                            'asPopover' => true,
                            'value' => $model->burst_time,
                            'inputType' => \kartik\editable\Editable::INPUT_TEXT,
                            'formOptions'=>['action' => ['/cpu/process/updatebursttime']], // point to the new action
                        ];
                    },
                    'hAlign'=>'center',
                    'vAlign'=>'left',
                    'width'=>'250px',
                ],
                [
                    'class'=>'kartik\grid\EditableColumn',
                    'attribute'=>'priority',
                    'header'=>'Priority',
                    'refreshGrid'=>true,
                    'editableOptions'=> function ($model , $key , $index) {
                        return [
                            'options' => ['id' => $index . '_' . $model->priority. '_' . Yii::$app->security->generateRandomString(8)],
                            'placement'=>'left',
                            'name'=>'priority',
                            'asPopover' => true,
                            'value' => $model->priority,
                            'inputType' => \kartik\editable\Editable::INPUT_TEXT,
                            'formOptions'=>['action' => ['/cpu/process/updatepriority']], // point to the new action
                        ];
                    },
                    'hAlign'=>'center',
                    'vAlign'=>'left',
                    'width'=>'250px',
                ],
        ]]); 
    ?>
    
    
    <div class="panel panel-info">
        <div class="panel-heading"><b>First-come,First-serve (FCFS)</b></div>
        <div class="panel-body" id="gantt-fcfs">
        <h4>Gannt Chart</h4>
        </div>
        <div class="panel-body" id="result-fcfs">
            <?php \yii\widgets\Pjax::begin(); ?>
            <?php
                $gridColumns = [
                                [
                                    'attribute' => 'process_id',
                                    'header' => 'Process',
                                    'headerOptions' => ['style' => 'text-align: center; bg-color: blue;'],
                                    'contentOptions' => ['style' => 'text-align: center; font-weight: bold;'],
                                    'value'=>function ($model, $key, $index, $widget){ 
                                                return $model->process_id;
                                            },
                                    'pageSummary' => 'Average Waiting Time : '.Processresult::getAverageWaitingTime($sessionId).
                                                    '<br/>Average Turnaround Time : '.Processresult::getAverageTurnaroundTime($sessionId).
                                                    '<br/>CPU Utilization Rate :',
                                    'pageSummaryOptions' => ['colspan' => 8]
                                ],
                                [
                                    'attribute' => 'arrival_time',
                                    'headerOptions' => ['style' => 'text-align: center'],
                                    'contentOptions' => ['style' => 'text-align: center;'],
                                    'value'=>function ($model, $key, $index, $widget) { 
                                                return $model->arrival_time;
                                            },
                                ],
                                [
                                    'attribute' => 'begin',
                                    'headerOptions' => ['style' => 'text-align: center'],
                                    'contentOptions' => ['style' => 'text-align: center;'],
                                    'value'=>function ($model, $key, $index, $widget) { 
                                                return $model->begin;
                                            },
                                ],
                                [
                                    'attribute' => 'end',
                                    'headerOptions' => ['style' => 'text-align: center'],
                                    'contentOptions' => ['style' => 'text-align: center;'],
                                    'value'=>function ($model, $key, $index, $widget) { 
                                                return $model->end;
                                            },
                                ],
                                [
                                    'attribute' => 'turn_around_time',
                                    'headerOptions' => ['style' => 'text-align: center'],
                                    'contentOptions' => ['style' => 'text-align: center;'],
                                    'value'=>function ($model, $key, $index, $widget) { 
                                                return $model->turn_around_time;
                                            },
                                ],
                                [
                                    'attribute' => 'waiting_time',
                                    'headerOptions' => ['style' => 'text-align: center'],
                                    'contentOptions' => ['style' => 'text-align: center;'],
                                    'value'=>function ($model, $key, $index, $widget) { 
                                                return $model->waiting_time;
                                            },
                                ],
                                [
                                    'attribute' => 'cpu_utilization',
                                    'headerOptions' => ['style' => 'text-align: center'],
                                    'contentOptions' => ['style' => 'text-align: center;'],
                                    'value'=>function ($model, $key, $index, $widget) { 
                                                return $model->cpu_utilization;
                                            },
                                ],
                ];

                echo GridView::widget([
                                    'dataProvider' => $resultFcfsDataProvider,
                                    'id'=>'fcfs-processes', //additional
                                    'pjax' => true, // pjax is set to always true for this demo
                                    'pjaxSettings' => [
                                        'options' => [
                                            'enablePushState' => false,
                                        ]
                                    ],
                                    'panel' => [
                                        'heading'=>'<h3 class="panel-title">RESULT: First Come, First Serve</h3>('.$sessionId.')',
                                        'type' => GridView::TYPE_PRIMARY,
                                        'before'=>
                                            Html::button('Start FCFS Simulation', ['onClick'=> 'onFcfs($("#number-of-process",).val(),"'.$sessionId.'");','value' => Url::to(['process/start']), 'title' => 'ProcessSimulation', 'class' => 'btn btn-info', 'style'=>'margin-right: 6px;', 'id'=>'buttonStart']),
                                        'after'=>false,
                                    ],
                                    'responsive'=>false,
                                    'striped'=>true,
                                    'hover'=>true,
                                    'columns' => $gridColumns,
                                    'showPageSummary' => true,
                ]); 
                    ?>
                <?php \yii\widgets\Pjax::end(); ?>
                </div>
            </div>
            
            
            
    <div class="panel panel-info">
        <div class="panel-heading"><b>Round Robin (RR)</b></div>
        <div class="panel-body" id="gantt-rr">
        <h4>Gannt Chart</h4>
        </div>
        <div class="panel-body" id="result-rr">
            <?php \yii\widgets\Pjax::begin(); ?>
            <?php
                $gridColumns = [
                                [
                                    'attribute' => 'process_id',
                                    'header' => 'Process',
                                    'headerOptions' => ['style' => 'text-align: center; bg-color: blue;'],
                                    'contentOptions' => ['style' => 'text-align: center; font-weight: bold;'],
                                    'value'=>function ($model, $key, $index, $widget){ 
                                                return $model->process_id;
                                            },
                                    'pageSummary' => 'Average Waiting Time : '.Processresult::getAverageWaitingTime($sessionId).
                                                    '<br/>Average Turnaround Time : '.Processresult::getAverageTurnaroundTime($sessionId).
                                                    '<br/>CPU Utilization Rate :',
                                    'pageSummaryOptions' => ['colspan' => 8]
                                ],
                                [
                                    'attribute' => 'arrival_time',
                                    'headerOptions' => ['style' => 'text-align: center'],
                                    'contentOptions' => ['style' => 'text-align: center;'],
                                    'value'=>function ($model, $key, $index, $widget) { 
                                                return $model->arrival_time;
                                            },
                                ],
                                [
                                    'attribute' => 'begin',
                                    'headerOptions' => ['style' => 'text-align: center'],
                                    'contentOptions' => ['style' => 'text-align: center;'],
                                    'value'=>function ($model, $key, $index, $widget) { 
                                                return $model->begin;
                                            },
                                ],
                                [
                                    'attribute' => 'end',
                                    'headerOptions' => ['style' => 'text-align: center'],
                                    'contentOptions' => ['style' => 'text-align: center;'],
                                    'value'=>function ($model, $key, $index, $widget) { 
                                                return $model->end;
                                            },
                                ],
                                [
                                    'attribute' => 'turn_around_time',
                                    'headerOptions' => ['style' => 'text-align: center'],
                                    'contentOptions' => ['style' => 'text-align: center;'],
                                    'value'=>function ($model, $key, $index, $widget) { 
                                                return $model->turn_around_time;
                                            },
                                ],
                                [
                                    'attribute' => 'waiting_time',
                                    'headerOptions' => ['style' => 'text-align: center'],
                                    'contentOptions' => ['style' => 'text-align: center;'],
                                    'value'=>function ($model, $key, $index, $widget) { 
                                                return $model->waiting_time;
                                            },
                                ],
                                [
                                    'attribute' => 'cpu_utilization',
                                    'headerOptions' => ['style' => 'text-align: center'],
                                    'contentOptions' => ['style' => 'text-align: center;'],
                                    'value'=>function ($model, $key, $index, $widget) { 
                                                return $model->cpu_utilization;
                                            },
                                ],
                ];

                echo GridView::widget([
                                    'dataProvider' => $resultRrDataProvider,
                                    'id'=>'rr-processes', //additional
                                    'pjax' => true, // pjax is set to always true for this demo
                                    'pjaxSettings' => [
                                        'options' => [
                                            'enablePushState' => false,
                                        ]
                                    ],
                                    'panel' => [
                                        'heading'=>'<h3 class="panel-title">RESULT: Round Robin</h3>('.$sessionId.')',
                                        'type' => GridView::TYPE_PRIMARY,
                                        'before'=>
                                            Html::button('Start RR Simulation', ['onClick'=> 'onRr($("#number-of-process",).val(),"'.$sessionId.'",$("#time-quantum",).val());','value' => Url::to(['process/start']), 'title' => 'ProcessSimulation', 'class' => 'btn btn-info', 'style'=>'margin-right: 6px;', 'id'=>'buttonStart']),
                                        'after'=>false,
                                    ],
                                    'toolbar' => 
                                        ['content' =>
                                            Select2::widget([
                                                'name' => 'time_quantume',
                                                'value' => $timeQuantum,
                                                'id' => 'time-quantum',
                                                'data' => ['1' => '1', '2' => '2', '3' => '3', '4' => '4', '5' => '5'],
                                                'options' => [
                                                    'placeholder' => 'Time Quantum',
                                                    'multiple' => false,
                                                ],
                                            ])],
                                    'responsive'=>false,
                                    'striped'=>true,
                                    'hover'=>true,
                                    'columns' => $gridColumns,
                                    'showPageSummary' => true,
                ]); 
                    ?>
                <?php \yii\widgets\Pjax::end(); ?>
                </div>
            </div>
</div>

<script type="text/javascript">
//window.CSRF_TOKEN = "{{ csrf_token }}";
    
$( document ).ready(function() {
    $(".kv-page-summary").children().next().hide();
    
    $("button").click(function(){
        $("#box").animate({left: '1250px'});
      });
});     
function onFcfs(numberOfProcess, sessionId){
    jQuery.ajax( {
        type: 'POST',
        url: '/cpu/process/fcfs?numberOfProcess='+numberOfProcess+'&sessionId='+sessionId,
        data: {csrfmiddlewaretoken: window.CSRF_TOKEN},
        dataType: 'html',
        success: function ( response ) {
            alert(response);
            
            $.pjax.reload({container:'#p0'});
            //makeFcfsGantt();
             
        },
        error: function ( xhr, ajaxOptions, thrownError ) {
            alert( thrownError );
        }
    });
} 

function onRr(numberOfProcess, sessionId, timeQuantum){
    if(timeQuantum){
        jQuery.ajax( {
            type: 'POST',
            url: '/cpu/process/rr?numberOfProcess='+numberOfProcess+'&sessionId='+sessionId+'&timeQuantum='+timeQuantum,
            data: {csrfmiddlewaretoken: window.CSRF_TOKEN},
            dataType: 'html',
            success: function ( response ) {
                alert(response);
                
                $.pjax.reload({container:'#p1'});
                //$("#p1").width(400);
                //makeFcfsGantt();
                
            },
            error: function ( xhr, ajaxOptions, thrownError ) {
                alert( thrownError );
            }
        });
    }else{
        alert("Please select Time Quantum!");
    }
    
} 
function makeFcfsGantt()
{
    $('#gantt-fcfs').append('<div id="P1" style="border: 1px solid #000000; width: 200px; float: left;">P1</div>')		
    e.preventDefault();
}
</script>

<?php $this->registerJs( 
    '$(document).ready(function(){ 

        $("#number-of-process").change(function(){
        var e = document.getElementById("number-of-process");
            var strSel =  e.options[e.selectedIndex].value;
            window.location.href="'.Yii::$app->urlManager->createUrl('cpu/process/index?sessionId='.$sessionId.'&numberOfProcess=').'" + strSel;
        });

    });');

    /*$.ajax({
            type: "POST",
            url: "<?php //echo Url::to(['process/simulate']); ?>",
            data: {numberOfProcess:numberOfProcess, sessionId: sessionId},
            dataType: "html",
            success: function(data){ 
                    setTimeout(function(){
                       $('#result-fcfs').show();
                       $('#result-fcfs').html(data);
                           }, 0);
            }
            });
    return false;*/
?>
