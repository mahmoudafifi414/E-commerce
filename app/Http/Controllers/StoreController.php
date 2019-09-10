<?php

namespace App\Http\Controllers;


use Illuminate\Http\Request;
use Cache;
class StoreController extends Controller
{
    public function index(Request $request)
    {
        //get the items from the API and then render them
        $equest = Request::create('http://127.0.0.1:8000/getAllItemsApi', 'GET');
        $res = app()->handle($equest);
        $allItems = json_decode($res->getContent());
        dd($allItems);
        return view('index', ['allItems' => ($allItems)]);
    }

    public function showCart()
    {
        //get cart items from cache then render it
        $equest = Request::create('http://127.0.0.1:8000/getCartApi', 'GET');
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
