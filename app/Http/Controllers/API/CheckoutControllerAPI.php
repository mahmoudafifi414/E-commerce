<?php

namespace App\Http\Controllers\API;

use App\Customer;
use App\Events\Checkout;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Cache;

class CheckoutControllerAPI extends Controller
{
    //make the checkout action
    public function checkout(Request $request)
    {
        try {

            //find customer based on id let's say 1
            $userCredit = Customer::find(1)->store_credit;

            //get cache credit and then compare with user credit
            return response()->json(['status' => Cache::get('cart')->totalPrice > $userCredit]);
            if (Cache::get('cart')->totalPrice > $userCredit) {
                return response()->json(['status' => false, 'msg' => 'error happened', 'reason' => 'credit']);
            }

            //if credit enough then fire the event
            event(new Checkout($request->all()));
            return response()->json(['status' => true, 'msg' => 'done successfully']);
        } catch (\Exception $exception) {
            return response()->json(['status' => false, 'msg' => 'error happened', 'reason' => 'error']);
        }
    }
}
