<?php

namespace common\models;

use Yii;

/**
 * This is the model class for table "donation".
 *
 * @property integer $id
 * @property string $date
 * @property string $method
 * @property string $description
 * @property integer $donation_type
 * @property integer $donor
 *
 * @property DonationType $donationType
 * @property User $donor0
 */
class Donation extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'donation';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['description'], 'string'],
            [['donation_type', 'donor'], 'required'],
            [['donation_type', 'donor'], 'integer'],
            [['date'], 'string', 'max' => 45],
            [['method'], 'string', 'max' => 50],
            [['donation_type'], 'exist', 'skipOnError' => true, 'targetClass' => DonationType::className(), 'targetAttribute' => ['donation_type' => 'id']],
            [['donor'], 'exist', 'skipOnError' => true, 'targetClass' => User::className(), 'targetAttribute' => ['donor' => 'id']],
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'date' => 'Date',
            'method' => 'Method',
            'description' => 'Description',
            'donation_type' => 'Donation Type',
            'donor' => 'Donor',
        ];
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getDonationType()
    {
        return $this->hasOne(DonationType::className(), ['id' => 'donation_type']);
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getDonor0()
    {
        return $this->hasOne(User::className(), ['id' => 'donor']);
    }
}
