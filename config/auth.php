<?php

return [

    'defaults' => [
        'guard' => 'supervisor-web',
        'passwords' => 'supervisors',
    ],

    'guards' => [
        'supervisor-web' => [
            'driver' => 'session',
            'provider' => 'supervisors',
        ],
        'beneficiary-web' => [
            'driver' => 'session',
            'provider' => 'beneficiaries',
        ],
    ],

    'providers' => [
        'supervisors' => [
            'driver' => 'eloquent',
            'model' => App\Models\Supervisor::class,
        ],
        'beneficiaries' => [
            'driver' => 'eloquent',
            'model' => App\Models\Beneficiary::class,
        ],
    ],

    'passwords' => [

        'supervisors' => [
            'provider' => 'supervisors',
            'table' => 'supervisor_password_resets',
            'expire' => 60,
            'throttle' => 60,
        ],
        'beneficiaries' => [
            'provider' => 'beneficiaries',
            'table' => 'beneficiary_password_resets',
            'expire' => 60,
            'throttle' => 60,
        ],
    ],

    'password_timeout' => 10800,

];
