<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model common\models\VolunteerSearch */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="volunteer-search">

    <?php $form = ActiveForm::begin([
        'action' => ['index'],
        'method' => 'get',
    ]); ?>

    <?= $form->field($model, 'id') ?>

    <?= $form->field($model, 'first_name') ?>

    <?= $form->field($model, 'middle_name') ?>

    <?= $form->field($model, 'last_name') ?>

    <?= $form->field($model, 'organization') ?>

    <?php // echo $form->field($model, 'birth_year') ?>

    <?php // echo $form->field($model, 'contact') ?>

    <?php // echo $form->field($model, 'email') ?>

    <?php // echo $form->field($model, 'date_registered') ?>

    <?php // echo $form->field($model, 'occupation') ?>

    <?php // echo $form->field($model, 'available_start_time') ?>

    <?php // echo $form->field($model, 'available_end_time') ?>

    <?php // echo $form->field($model, 'available_day') ?>

    <?php // echo $form->field($model, 'total_volunteer') ?>

    <?php // echo $form->field($model, 'barangay') ?>

    <?php // echo $form->field($model, 'city_municipal') ?>

    <?php // echo $form->field($model, 'province') ?>

    <?php // echo $form->field($model, 'region') ?>

    <div class="form-group">
        <?= Html::submitButton('Search', ['class' => 'btn btn-primary']) ?>
        <?= Html::resetButton('Reset', ['class' => 'btn btn-default']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
