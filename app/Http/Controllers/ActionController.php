<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Validator;
use GuzzleHttp;

class ActionController extends Controller
{
    private $_link;

    public function __construct()
    {
        $this->_link = 'http://127.0.0.1:8000';
        if (env('APP_ENV') == 'Production') {
            $this->_link = 'http://micro-e-commerce.herokuapp.com/public';
        }
    }

    public function addToCart($itemId)
    {
        //call addToCartApi
        $client = new GuzzleHttp\Client();
        $res = $client->get($this->_link . '/addToCartApi/' . $itemId);
        $cartItems = json_decode($res->getBody());
        return redirect('/');
    }

    public function removeItemFromCart($itemId)
    {   //call removeItemApi then redirect to cart page
        $client = new GuzzleHttp\Client();
        $res = $client->get($this->_link . '/removeItemApi/' . $itemId);
        $cartItems = json_decode($res->getBody());
        return redirect('/cart');
    }

    public function callCheckoutApi(Request $request)
    {
        //call checkout api then go to thank you page
        $validator = $this->validateCheckoutVars($request);
        if ($validator->fails()) {
            return redirect('/checkout')->withErrors($validator);
        }
        $client = new GuzzleHttp\Client();
        $res = $client->request('POST', $this->_link . '/checkoutApi', [
            'form_params' => [
                'telephone' => $request->telephone,
                'address' => $request->address,
            ]
        ]);
        $responseMsg = json_decode($res->getBody());
        if ($responseMsg->status) {
            return view('resultPage', ['success' => true, 'link' => $this->_link]);
        }
        return view('resultPage', ['fail' => true, 'reason' => $responseMsg->reason, 'link' => $this->_link]);
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
