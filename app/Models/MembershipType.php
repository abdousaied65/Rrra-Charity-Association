<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class MembershipType extends Model
{
    protected $table = "membership_types";
    protected $guard = 'supervisor-web';
    protected $guard_name = 'supervisor-web';
    protected $fillable = [
        'membership_type', 'price'
    ];
}
