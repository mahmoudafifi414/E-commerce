<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Validator;

class ActionController extends Controller
{
    public function addToCart($itemId)
    {
        //call addToCartApi
        $request = Request::create('http://127.0.0.1:8000/addToCartApi/' . $itemId, 'GET');
        $res = app()->handle($request);
        $cartItems = json_decode($res->getContent());
        return redirect('/');
    }

    public function removeItemFromCart($itemId)
    {   //call removeItemApi then redirect to cart page
        $request = Request::create('http://127.0.0.1:8000/removeItemApi/' . $itemId, 'GET');
        $res = app()->handle($request);
        $cartItems = json_decode($res->getContent());
        return redirect('/cart');
    }

    public function callCheckoutApi(Request $request)
    {
        //call checkout api then go to thank you page
        $validator = $this->validateCheckoutVars($request);
        if ($validator->fails()) {
            return redirect('/checkout')->withErrors($validator);
        }
        $request = Request::create('http://127.0.0.1:8000/checkoutApi', 'POST', $request->all());
        $res = app()->handle($request);
        $responseMsg = json_decode($res->getContent());
        if ($responseMsg->status) {
            return view('resultPage', ['success' => true]);
        }
        return view('resultPage', ['fail' => true, 'reason' => $responseMsg->reason]);
    }

    public function validateCheckoutVars($request)
    {
        $validator = Validator::make($request->all(), [
            'telephone' => 'min:15|max:20',
            'address' => 'min:30'
        ]);
        return $validator;
    }
}
