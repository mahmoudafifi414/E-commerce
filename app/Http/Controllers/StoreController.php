<?php

namespace App\Http\Controllers;


use Illuminate\Http\Request;
use Cache;

class StoreController extends Controller
{
    private $_link;

    public function __construct()
    {
        if (env('APP_ENV') == 'Production') {
            dd('aa');
            $this->_link = 'http://micro-e-commerce.herokuapp.com/public';
        }
        dd('tt');
        $this->_link = 'http://127.0.0.1:8000';
    }

    public function index(Request $request)
    {
        //get the items from the API and then render them
        $equest = Request::create($this->_link . '/getAllItemsApi', 'GET');
        $res = app()->handle($equest);
        $allItems = json_decode($res->getContent());
        return view('index', ['allItems' => ($allItems), 'link' => $this->_link]);
    }

    public function showCart()
    {
        //get cart items from cache then render it
        $equest = Request::create($this->_link . '/getCartApi', 'GET');
        $res = app()->handle($equest);
        $cartItems = json_decode($res->getContent());
        return view('card', ['cartItems' => $cartItems]);
    }

    public function showCheckoutPage()
    {
        if (!Cache::has('cart') or (Cache::has('cart') and Cache::get('cart')->totalPrice) == 0) {
            return redirect('/');
        }
        //show checkout page
        return view('checkout');
    }
}
