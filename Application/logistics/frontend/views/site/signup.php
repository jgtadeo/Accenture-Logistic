<?php

/* @var $this yii\web\View */
/* @var $form yii\bootstrap\ActiveForm */
/* @var $model \frontend\models\SignupForm */

use common\models\Barangay;
use common\models\CityMunicipal;
use common\models\Province;
use common\models\Region;
use common\models\UserType;
use yii\helpers\ArrayHelper;
use yii\helpers\Html;
use yii\bootstrap\ActiveForm;

$this->title = 'Signup';
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="site-signup">
    <div class="login-box">
        <div class="login-logo">
            <img src="http://i1044.photobucket.com/albums/b444/jgtadeo/Logistics/ndrrmc_philippines_zpsg4b7xek4.png" width="120" height="90"/><br/>
            <hr zize="10px"/>
            <h3><a href="index.php"><b>Logistics </b></a></h3>
        </div>

        <p align="center">Please fill out the following fields to signup:</p>

        <div class="login-box-body">

                <?php $form = ActiveForm::begin(['id' => 'form-signup', 'options'=>['enctype'=>'multipart/form-data']]); ?>


                    <div class="col-md-4">
                        <?= $form->field($model, 'username')->textInput() ?>
                    </div>

                    <div class="col-md-4">
                        <?= $form->field($model, 'password')->passwordInput() ?>
                    </div>

                    <div class="col-md-4">
                        <?= $form->field($model, 'email') ?>
                    </div>

                    <div class="col-md-4">
                        <?= $form->field($model, 'first')->textInput(['autofocus' => true]) ?>
                    </div>

                    <div class="col-md-4">
                        <?= $form->field($model, 'middle') ?>
                    </div>

                    <div class="col-md-4">
                        <?= $form->field($model, 'last') ?>
                    </div>

                    <div class="col-md-4">
                        <?= $form->field($model, 'contact_number') ?>
                    </div>

                    <div class="col-md-4">
                        <?= $form->field($model, 'birthyear') ?>
                    </div>

                    <div class="col-md-4">
                        <?= $form->field($model, 'birthmonth') ?>
                    </div>

                    <div class="col-md-4">
                        <?= $form->field($model, 'birthdate') ?>
                    </div>

                    <div class="col-md-4">
                        <?= $form->field($model, 'sex')->dropDownList(
                            [
                                'Male' => 'Male',
                                'Female' => 'Female',
                            ],
                            ['prompt' => 'Sex']) ?>
                    </div>

                    <div class="col-md-6">
                        <?= $form->field($model, 'user_type')->dropDownList(
                            ArrayHelper::map(UserType::find()->all(), 'id', 'name'),
                            [
                                'prompt' => 'Select type of user',

                            ]);?>
                    </div>

                    <div class="col-md-6">
                        <?= $form->field($model, 'barangay_id')->dropDownList(
                            ArrayHelper::map(Barangay::find()->all(), 'id', 'name'),
                            [
                                'prompt' => 'What barangay are you from?',

                            ]);?>
                    </div>

                    <div class="form-group">
                        <?= Html::submitButton('Signup', ['class' => 'btn btn-primary center', 'name' => 'signup-button']) ?>
                    </div>

                <?php ActiveForm::end(); ?>

        </div>
    </div>
</div>
