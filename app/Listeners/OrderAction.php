<?php

namespace App\Listeners;

use App\Events\Checkout;
use App\Order;
use Illuminate\Queue\InteractsWithQueue;
use Illuminate\Contracts\Queue\ShouldQueue;
use Cache;

class OrderAction
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
    public function handle(Checkout $event)
    {
        //get the request data and then save the order and also depend on cache data
        $eventData = $event->data;
        //get cache data
        $cartData = Cache::get('cart');
        Order::create(['customer_id' => 1, 'total' => $cartData->totalPrice, 'address' => $eventData['address'], 'telephone' => $eventData['telephone']]);
    }
}
