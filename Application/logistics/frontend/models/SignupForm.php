<?php
namespace frontend\models;

use yii\base\Model;
use common\models\User;

/**
 * Signup form
 */
class SignupForm extends Model
{
    public $username;
    public $email;
    public $password;
    public $first;
    public $middle;
    public $last;
    public $contact_number;
    public $birthyear;
    public $birthmonth;
    public $birthdate;
    public $user_type;
    public $barangay_id;
    public $sex;


    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            ['username', 'filter', 'filter' => 'trim'],
            ['username', 'required'],
            ['username', 'unique', 'targetClass' => '\common\models\User', 'message' => 'This username has already been taken.'],
            ['username', 'string', 'min' => 2, 'max' => 255],

            ['email', 'filter', 'filter' => 'trim'],
            ['email', 'required'],
            ['email', 'email'],
            ['email', 'string', 'max' => 255],
            ['email', 'unique', 'targetClass' => '\common\models\User', 'message' => 'This email address has already been taken.'],

            ['password', 'required'],
            ['password', 'string', 'min' => 6],

            ['first', 'string', 'max' => 255],
            ['first', 'required'],

            ['middle', 'string', 'max' => 255],

            ['last', 'string', 'max' => 255],
            ['last', 'required'],

            ['contact_number', 'string', 'max' => 45],

            ['birthyear', 'required'],
            ['birthmonth', 'required'],
            ['birthdate', 'required'],


            ['user_type', 'string', 'max' => 45],
            ['barangay_id', 'string', 'max' => 255],

            ['sex', 'string', 'max' => 45],


        ];
    }

    /**
     * Signs user up.
     *
     * @return User|null the saved model or null if saving fails
     */
    public function signup()
    {
        if (!$this->validate()) {
            return null;
        }
        
        $user = new User();
        $user->username = $this->username;
        $user->email = $this->email;
        $user->setPassword($this->password);
        $user->generateAuthKey();

        $user->first = $this->first;
        $user->middle = $this->middle;
        $user->last = $this->last;
        $user->contact_number = $this->contact_number;
        $user->birthyear = $this->birthyear;
        $user->user_type = $this->user_type;
        $user->barangay_id = $this->barangay_id;
        $user->sex = $this->sex;

        return $user->save() ? $user : null;
    }
}
