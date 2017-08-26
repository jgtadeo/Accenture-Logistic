<?php

namespace common\models;

use Yii;

/**
 * This is the model class for table "request".
 *
 * @property integer $id
 * @property string $date_needed
 * @property string $date_requested
 * @property string $reason
 * @property integer $quantity_needed
 * @property string $receipient
 * @property string $requestor
 * @property string $beneficiary
 * @property string $priority
 * @property string $status
 * @property integer $total_quantity
 * @property integer $total_request
 * @property integer $user
 * @property string $vehicle_plate_number
 * @property integer $supply_code
 * @property integer $volunteer
 * @property string $volunteer_occupation
 * @property string $vehicle_type
 * @property string $vehicle_name
 * @property string $supply_type
 *
 * @property Supply $supplyCode
 * @property User $user_
 * @property Vehicle $vehiclePlateNumber
 * @property Volunteer $volunteer_
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
            [['date_needed', 'date_requested', 'reason', 'quantity_needed', 'receipient'], 'required'],
            [['date_needed', 'date_requested', 'vehicle_type', 'vehicle_name', 'volunteer_occupation', 'supply_type'], 'safe'],
            [['reason', 'priority', 'status', 'vehicle_type', 'vehicle_name', 'volunteer_occupation', 'supply_type'], 'string'],
            [['quantity_needed', 'total_quantity', 'total_request', 'user', 'supply_code', 'volunteer'], 'integer'],
            [['receipient', 'beneficiary'], 'string', 'max' => 255],
            [['vehicle_plate_number'], 'string', 'max' => 20],
            [['supply_code'], 'exist', 'skipOnError' => true, 'targetClass' => Supply::className(), 'targetAttribute' => ['supply_code' => 'code']],
            [['user'], 'exist', 'skipOnError' => true, 'targetClass' => User::className(), 'targetAttribute' => ['user' => 'id']],
            [['vehicle_plate_number'], 'exist', 'skipOnError' => true, 'targetClass' => Vehicle::className(), 'targetAttribute' => ['vehicle_plate_number' => 'plate_number']],
            [['volunteer'], 'exist', 'skipOnError' => true, 'targetClass' => Volunteer::className(), 'targetAttribute' => ['volunteer' => 'id']],
            [['status'], 'required', 'on' => 'confirmation'],
            [['status'], 'required', 'on' => 'intransiting'],
            [['status'], 'required', 'on' => 'delivering'],
            [['vehicle_plate_number', 'vehicle_type', 'vehicle_name', 'volunteer', 'volunteer_occupation'],'required', 'on' => 'updatereply'],
        ];
    }

    public function scenarios()
    {
        $scenarios = parent::scenarios(); // TODO: Change the autogenerated stub
        $scenarios['confirmation'] = ['status'];
        $scenarios['intransiting'] = ['status'];
        $scenarios['updatereply'] = ['vehicle_plate_numner', 'vehicle_type', 'vehicle_name', 'volunteer', 'volunteer_occupation'];
        $scenarios['arriving'] = ['status'];

        return $scenarios;
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'date_needed' => 'Date Needed',
            'date_requested' => 'Requested Date',
            'reason' => 'Reason',
            'quantity_needed' => 'Quantity Needed',
            'receipient' => 'Receipient',
            'beneficiary' => 'Beneficiary',
            'priority' => 'Priority Level',
            'status' => 'Status',
            'total_quantity' => 'Total Quantity',
            'total_request' => 'Total Requests',
            'user' => 'Requestor',
            'vehicle_plate_number' => 'Vehicle Plate Number',
            'supply_code' => 'Supply Code',
            'volunteer' => 'Volunteer Assigned',
            'volunteer_occupation' => 'Volunteer type',
            'supply_type' => 'Supply type',
            'vehicle_type' => 'Vehicle Type',
            'vehicle_name' => 'Vehicle Name',
        ];
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getSupplyCode()
    {
        return $this->hasOne(Supply::className(), ['code' => 'supply_code']);
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getUser()
    {
        return $this->hasOne(User::className(), ['id' => 'user']);
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getVehiclePlateNumber()
    {
        return $this->hasOne(Vehicle::className(), ['plate_number' => 'vehicle_plate_number']);
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getVolunteer()
    {
        return $this->hasOne(Volunteer::className(), ['id' => 'volunteer']);
    }

}