<?php

use yii\helpers\Html;
use yii\widgets\DetailView;

/* @var $this yii\web\View */
/* @var $model common\models\Request */

$this->title = $model->id;
$this->params['breadcrumbs'][] = ['label' => 'Requests', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="request-view">

    <h1><?= Html::encode($this->title) ?></h1>

    <p>
        <?= Html::a('Update', ['update', 'id' => $model->id], ['class' => 'btn btn-primary']) ?>
    </p>

    <?= DetailView::widget([
        'model' => $model,
        'attributes' => [
            //'id',
            'date_needed',
            'date_requested',
            'reason:ntext',
            'quantity_needed',
            'receipient',
            'beneficiary',
            //'priority',
            'status',
            //'total_quantity',
            'user',
            'vehicle_plate_number',
            'supply_code',
            'volunteer',
            'volunteer_occupation',
            //'supply_type',
            'vehicle_type',
            'vehicle_name',
        ],
    ]) ?>

</div>
