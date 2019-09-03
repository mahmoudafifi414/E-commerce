<?php
Route::group(['middleware' => ['web']], function () {
    //API Actions
    Route::get('/getAllItemsApi', 'API\StoreControllerAPI@getAllItemsApi');
    Route::get('/addToCartApi/{id}', 'API\StoreControllerAPI@addToCartApi');
    Route::get('/getCartApi', 'API\StoreControllerAPI@getCartApi');
    Route::get('/removeItemApi/{id}', 'API\StoreControllerAPI@removeItemFromCart');
    Route::post('/checkoutApi', 'API\CheckoutControllerAPI@checkout');
//app actions
    Route::get('/', 'StoreController@index');
    Route::get('/cart', 'StoreController@showCart');
    Route::get('/addToCart/{id}', 'ActionController@addToCart');
    Route::get('/removeItem/{id}', 'ActionController@removeItemFromCart');
    Route::get('/checkout', 'StoreController@showCheckoutPage');
    Route::post('/callCheckoutApi', 'ActionController@callCheckoutApi');
});

