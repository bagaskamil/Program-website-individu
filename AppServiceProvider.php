<?php

namespace App\Providers;

use Illuminate\Support\ServiceProvider;
use View;
use App\Models\Pembelian;
use App\Observers\PembelianObserver;


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
     * Bootstrap any application services.
     *
     * @return void
     */
    public function boot()
    {
        $config = \DB::table('setting_webs')->where('id',1)->first();
        
        View::share('config',$config);
        Pembelian::observe(PembelianObserver::class);
        
        
    }
}
