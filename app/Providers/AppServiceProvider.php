<?php

namespace App\Providers;

use App\Models\AboutContent;

use App\Models\DonationContent;
use App\Models\Information;
use App\Models\Setting;
use Illuminate\Support\Facades\View;
use Illuminate\Support\ServiceProvider;

class AppServiceProvider extends ServiceProvider
{
    /**
     * Register any application services.
     *
     * @return void
     */
    public function register()
    {
        //
    }

    /**
     *
     * Bootstrap any application services.
     *
     * @return void
     */
    public function boot()
    {
        $settings = Setting::First();
        View::share('settings', $settings);

        $informations = Information::First();
        View::share('informations', $informations);

        $about_content = AboutContent::First();
        View::share('about_content', $about_content);

        $donation_content = DonationContent::First();
        View::share('donation_content', $donation_content);

    }

}
