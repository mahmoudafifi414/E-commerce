<?php

namespace App\Listeners;

use App\Customer;
use Illuminate\Queue\InteractsWithQueue;
use Illuminate\Contracts\Queue\ShouldQueue;
use Cache;

class UserCredit
{
    /**
     * Create the event listener.
     *
     * @return void
     */
    public function __construct()
    {
        //
    }

    /**
     * Handle the event.
     *
     * @param object $event
     * @return void
     */
    public function handle($event)
    {
        //update customer credit let's say customer id 1
        $customer = Customer::find(1);
        $customer->store_credit = $customer->store_credit - Cache::get('cart')->totalPrice;
        $customer->update();
    }
}
