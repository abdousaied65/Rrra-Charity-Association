<?php

namespace App\Jobs;

use App\Mail\sendingEmail;
use Illuminate\Bus\Queueable;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Foundation\Bus\Dispatchable;
use Illuminate\Queue\InteractsWithQueue;
use Illuminate\Queue\SerializesModels;
use Illuminate\Support\Facades\Mail;

class SendEmailJob implements ShouldQueue
{
    use Dispatchable, InteractsWithQueue, Queueable, SerializesModels;

    /**
     * Create a new job instance.
     *
     * @return void
     */
    public function __construct()
    {
        //
    }

    /**
     * Execute the job.
     *
     * @return void
     */
    public function handle()
    {
        $data = [
            'subject' => 'Thank you for subscribing to my newsletter',
            'body' => 'You will receive a newsletter every Fourth Friday of the month'
        ];
        Mail::to('abdoushawer93@gmail.com')->send(new sendingEmail($data));
    }
}
