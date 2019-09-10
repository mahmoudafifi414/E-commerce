<?php

namespace App\Http\Controllers;


use Illuminate\Http\Request;
use Cache;
use GuzzleHttp;

class StoreController extends Controller
{
    private $_link;

    public function __construct()
    {
        $this->_link = 'http://127.0.0.1:8000';
        if (env('APP_ENV') == 'Production') {
            $this->_link = 'http://micro-e-commerce.herokuapp.com/public';
        }
    }

    public function index(Request $request)
    {
        //get the items from the API and then render them

        $client = new GuzzleHttp\Client();
        $res = $client->get($this->_link . '/getAllItemsApi');
        $allItems = json_decode($res->getBody());
        return view('index', ['allItems' => $allItems, 'link' => $this->_link]);
    }

    public function showCart()
    {
        //get cart items from cache then render it
        $client = new GuzzleHttp\Client();
        $res = $client->get($this->_link . '/getCartApi');
        $cartItems = json_decode($res->getBody());
        return view('card', ['cartItems' => $cartItems, 'link' => $this->_link]);
    }

    public function showCheckoutPage()
    {
        if (!Cache::has('cart') or (Cache::has('cart') and Cache::get('cart')->totalPrice) == 0) {
            return redirect('/');
        }
        //show checkout page
        return view('checkout', ['link' => $this->_link]);
    }
}
