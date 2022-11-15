<?php

namespace App\Models;
use Illuminate\Database\Eloquent\Model;

class Service extends Model
{
    protected $table = "services";
    protected $guard = 'supervisor-web';
    protected $guard_name = 'supervisor-web';
    protected $fillable = [
        'service_name','description'
    ];

}
