<?php

namespace App\Models;

use App\Notifications\ResetPasswordNotification;
use App\Notifications\VerifyEmailNotification;
use Illuminate\Foundation\Auth\User as Authenticatable;
use Illuminate\Notifications\Notifiable;
use Spatie\Permission\Traits\HasRoles;

class Beneficiary extends Authenticatable
{
    use Notifiable, HasRoles;

    protected $table = 'beneficiaries';
    protected $guard = 'beneficiary-web';
    protected $guard_name = 'beneficiary-web';

    protected $fillable = [
        'first_name_ar','second_name_ar','third_name_ar','fourth_name_ar','first_name_en',
        'second_name_en','third_name_en','fourth_name_en','employer','retirement_year',
        'qualification_id','specialization','date_of_birth','membership_type_id','email',
        'phone_number','record','gender','password','role_name','Status','start_date','end_date','paid'
    ];
    protected $hidden = [
        'password', 'remember_token',
        'email_verified_at'
    ];
    protected $casts = [
        'email_verified_at' => 'datetime',
    ];

    public function qualification()
    {
        return $this->belongsTo('\App\Models\Qualification', 'qualification_id', 'id');
    }

    public function membershipType()
    {
        return $this->belongsTo('\App\Models\MembershipType', 'membership_type_id', 'id');
    }

    public function sendPasswordResetNotification($token)
    {
        $this->notify(new ResetPasswordNotification($token, 'beneficiary.password.reset', 'beneficiaries'));
    }

    public function sendEmailVerificationNotification()
    {
        $this->notify(new VerifyEmailNotification('beneficiary.verification.verify'));
    }

//    public function reports()
//    {
//        return $this->hasMany('\App\Models\Report', 'beneficiary_id', 'id');
//    }
}
