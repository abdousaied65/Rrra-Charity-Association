<?php

namespace App\Models;
use Illuminate\Database\Eloquent\Model;

class DonationContent extends Model
{
    protected $table = "donation_content";
    protected $guard = 'supervisor-web';
    protected $guard_name = 'supervisor-web';
    protected $fillable = [
        'title','description'
    ];

}
