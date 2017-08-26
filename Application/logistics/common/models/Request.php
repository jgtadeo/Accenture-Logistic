<?php

namespace common\models;

use Yii;

/**
 * This is the model class for table "request".
 *
 * @property integer $tracking_number
 * @property string $date_requested
 * @property string $date_needed
 * @property string $quantity
 * @property string $description
 * @property integer $delivery_status
 * @property integer $user_id
 * @property integer $supply
 * @property string $vehicle_plate_number
 *
 * @property DeliveryStatus $deliveryStatus
 * @property User $user
 * @property VehicleHasDriver $vehiclePlateNumber
 * @property WarehouseHasSupply $supply0
 */
class Request extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'request';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['description'], 'string'],
            [['delivery_status', 'user_id', 'supply', 'vehicle_plate_number'], 'required'],
            [['delivery_status', 'user_id', 'supply'], 'integer'],
            [['date_requested', 'date_needed', 'quantity'], 'string', 'max' => 45],
            [['vehicle_plate_number'], 'string', 'max' => 10],
            [['delivery_status'], 'exist', 'skipOnError' => true, 'targetClass' => DeliveryStatus::className(), 'targetAttribute' => ['delivery_status' => 'id']],
            [['user_id'], 'exist', 'skipOnError' => true, 'targetClass' => User::className(), 'targetAttribute' => ['user_id' => 'id']],
            [['vehicle_plate_number'], 'exist', 'skipOnError' => true, 'targetClass' => VehicleHasDriver::className(), 'targetAttribute' => ['vehicle_plate_number' => 'vehicle_plate_number']],
            [['supply'], 'exist', 'skipOnError' => true, 'targetClass' => WarehouseHasSupply::className(), 'targetAttribute' => ['supply' => 'supply_list_of_supply_code']],
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'tracking_number' => 'Tracking Number',
            'date_requested' => 'Date Requested',
            'date_needed' => 'Date Needed',
            'quantity' => 'Quantity',
            'description' => 'Description',
            'delivery_status' => 'Delivery Status',
            'user_id' => 'User ID',
            'supply' => 'Supply',
            'vehicle_plate_number' => 'Vehicle Plate Number',
        ];
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getDeliveryStatus()
    {
        return $this->hasOne(DeliveryStatus::className(), ['id' => 'delivery_status']);
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getUser()
    {
        return $this->hasOne(User::className(), ['id' => 'user_id']);
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getVehiclePlateNumber()
    {
        return $this->hasOne(VehicleHasDriver::className(), ['vehicle_plate_number' => 'vehicle_plate_number']);
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getSupply0()
    {
        return $this->hasOne(WarehouseHasSupply::className(), ['supply_list_of_supply_code' => 'supply']);
    }
}
