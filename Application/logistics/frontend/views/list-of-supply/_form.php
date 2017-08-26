<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model common\models\ListOfSupply */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="list-of-supply-form">

    <?php $form = ActiveForm::begin(); ?>

    <?= $form->field($model, 'name')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'date_expiration')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'date_received')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'description')->textarea(['rows' => 6]) ?>

    <?= $form->field($model, 'timestamp')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'supply_type_id')->textInput() ?>

    <?= $form->field($model, 'unit_of_measurement_id')->textInput() ?>

    <?= $form->field($model, 'barangay_id')->textInput(['maxlength' => true]) ?>

    <div class="form-group">
        <?= Html::submitButton($model->isNewRecord ? 'Create' : 'Update', ['class' => $model->isNewRecord ? 'btn btn-success' : 'btn btn-primary']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
