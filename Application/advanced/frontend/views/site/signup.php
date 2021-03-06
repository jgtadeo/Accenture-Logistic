<?php

/* @var $this yii\web\View */
/* @var $form yii\bootstrap\ActiveForm */
/* @var $model \frontend\models\SignupForm */

use common\models\Barangay;
use common\models\CityMunicipal;
use common\models\Province;
use common\models\Region;
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


                    <div class="col-md-3">
                        <?= $form->field($model, 'first_name')->textInput(['autofocus' => true]) ?>
                    </div>

                    <div class="col-md-3">
                        <?= $form->field($model, 'middle_name') ?>
                    </div>

                    <div class="col-md-3">
                        <?= $form->field($model, 'last_name') ?>
                    </div>

                    <div class="col-md-3">
                        <?= $form->field($model, 'username')->textInput() ?>
                    </div>


                    <div class="col-md-3">
                        <?= $form->field($model, 'password')->passwordInput() ?>
                    </div>

                    <div class="col-md-3">
                        <?= $form->field($model, 'email') ?>
                    </div>

                    <div class="col-md-3">
                        <?= $form->field($model, 'contact') ?>
                    </div>

                    <div class="col-md-3">
                        <?= $form->field($model, 'birth_year') ?>
                    </div>

                    <div class="col-md-4">
                        <?= $form->field($model, 'organization') ?>
                    </div>

                    <!--<div class="col-md-4">
                        <?/*= $form->field($model, 'image')->fileInput() */?>
                    </div>-->

                    <div class="col-md-4">
                        <?= $form->field($model, 'marital_status')->dropDownList(
                            [ 'Single' => 'Single', 'Married' => 'Married'], ['prompt' => 'Select Status']) ?>
                    </div>

                    <div class="col-md-4">
                        <?= $form->field($model, 'active_inactive')->dropDownList(
                            [ 'Active' => 'Active', 'Inactive' => 'Inactive'], ['prompt' => 'Select Status']) ?>
                    </div>

                    <!--<div class="col-md-4">
                        <?/*= $form->field($model, 'type')->dropDownList(
                            [ 'National' => 'National', 'Regional' => 'Regional', 'Municipal' => 'Municipal', 'External' => 'External'], ['prompt' => 'Select Type of the user']) */?>
                    </div>-->

                    <div class="col-md-3">
                        <?= $form->field($model, 'region')->dropDownList(
                            ArrayHelper::map(Region::find()->all(), 'name', 'name'),
                            [
                                'prompt' => 'Select Region',
                                'onchange' => '$.post("index.php?r=site/list_province&id='.'"+$(this).val(),function(data){
                            $("select#province").html(data);
                        });'
                            ]);?>
                    </div>

                    <div class="col-md-3">
                        <?= $form->field($model, 'province')->dropDownList(
                            ArrayHelper::map(Province::find()->all(), 'name', 'name'),
                            [
                                'prompt' => 'Select Province',
                                'id' => 'province',
                                'onchange' => '$.post("index.php?r=site/list_city&id='.'"+$(this).val(),function(data){
                            $("select#city_municipal").html(data);
                        });'
                            ]);?>
                    </div>

                    <div class="col-md-3">
                        <?= $form->field($model, 'city_municipal')->dropDownList(
                            ArrayHelper::map(CityMunicipal::find()->all(), 'name', 'name'),
                            [
                                'prompt' => 'Select City / Municipal',
                                'id' => 'city_municipal',
                                'onchange' => '$.post("index.php?r=site     /list_barangay&id='.'"+$(this).val(),function(data){
                            $("select#barangay").html(data);
                        });'
                            ]);?>
                    </div>

                    <div class="col-md-3">
                        <?= $form->field($model, 'barangay')->dropDownList(
                            ArrayHelper::map(Barangay::find()->all(), 'name', 'name'),
                            [
                                'prompt' => 'Select Barangay',
                                'id' => 'barangay'

                            ]);?>
                    </div>

                    <div class="form-group">
                        <?= Html::submitButton('Signup', ['class' => 'btn btn-primary center', 'name' => 'signup-button']) ?>
                    </div>

                <?php ActiveForm::end(); ?>

        </div>
    </div>
</div>
