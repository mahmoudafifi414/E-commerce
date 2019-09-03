<?php

namespace App\Listeners;

use App\Cart;
use App\Customer;
use Illuminate\Queue\InteractsWithQueue;
use Illuminate\Contracts\Queue\ShouldQueue;
use Cache;


class CartListener
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

        //save items on cart table based on items on cache
        foreach (Cache::get('cart')->items as $key => $item) {
            Cart::create(['item_id' => $key, 'customer_id' => 1, 'quantity' => $item['qty']]);
        }
    }
}
