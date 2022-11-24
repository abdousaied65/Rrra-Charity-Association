<?php

namespace App\Models;
use Illuminate\Database\Eloquent\Model;

class RenewalRequest extends Model
{
    protected $table = 'renewal_requests';
    protected $fillable = [
        'beneficiary_id','start_date','end_date','acceptance_date','period','amount','membership_type_id','status'
    ];
    public function beneficiary(){
        return $this->belongsTo('\App\Models\Beneficiary','beneficiary_id','id');
    }
    public function membershipType()
    {
        return $this->belongsTo('\App\Models\MembershipType', 'membership_type_id', 'id');
    }
}
