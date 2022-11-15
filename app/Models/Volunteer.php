<?php

namespace App\Models;
use Illuminate\Foundation\Auth\User as Authenticatable;

class Volunteer extends Authenticatable
{
    protected $table = 'volunteers';
    protected $guard = 'supervisor-web';
    protected $guard_name = 'supervisor-web';
    protected $fillable = [
        'first_name','second_name','third_name','fourth_name', 'email','phone_number',
        'record','field_id','Status'
    ];
    public function field(){
        return $this->belongsTo('\App\Models\Field','field_id','id');
    }
}
