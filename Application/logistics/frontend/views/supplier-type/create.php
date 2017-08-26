<?php

use yii\helpers\Html;


/* @var $this yii\web\View */
/* @var $model common\models\SupplierType */

$this->title = 'Create Supplier Type';
$this->params['breadcrumbs'][] = ['label' => 'Supplier Types', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="supplier-type-create">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>