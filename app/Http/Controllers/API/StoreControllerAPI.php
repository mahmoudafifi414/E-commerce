<?php

namespace App\Http\Controllers\API;

use App\Http\Controllers\Controller;
use App\Item;
use App\Utilities\Cart;
use Illuminate\Http\Request;
use Cache;

class StoreControllerAPI extends Controller
{

    public function getAllItemsApi()
    {
        //get all items and return it
        try {
            $items = Item::all();
            return response()->json(['items' => $items], 200);
        } catch (\Exception $exception) {
            return response()->json(['msg' => 'unable to fetch items '.$exception], 500);
        }
    }

    public function getCartApi()
    {
        //get cart data and then return
        $cart = Cache::get('cart');
        return response()->json(['cart' => $cart]);
    }

    public function addToCartApi(Request $request, $id)
    {
        try {
            //get the item id and then add the item to the cart then save it to cache
            $item = Item::find($id);
            $oldCart = Cache::has('cart') ? Cache::get('cart') : null;
            $cart = new Cart($oldCart);
            //add the item tomcart
            $cart->add($item, $item->id);
            //update the cart on cache
            Cache::put('cart', $cart);
            return response()->json(['msg' => 'Item Added To Cart Successfully'], 200);
        } catch (\Exception $exception) {
            return response()->json(['msg' => 'unable to add items'], 500);
        }
    }

    public function removeItemFromCart($itemId)
    {
        try {
            //get the cart from cart
            $oldCart = Cache::has('cart') ? Cache::get('cart') : null;
            $cart = new Cart($oldCart);
            //remove the item from cart;
            $cart->remove($itemId);
            //update the cart in the cache
            Cache::put('cart', $cart);
            return response()->json(['msg' => 'Item Removed From Cart Successfully'], 200);
        } catch (\Exception $exception) {
            return response()->json(['msg' => 'unable to remove item'], 500);
        }
    }
}
