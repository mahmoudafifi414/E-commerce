@include('nav')
<div class="container">
    <div class="row">
        <div class="col-sm-12 col-md-10 col-md-offset-1">
            @if(isset($cartItems->cart->totalQty) and $cartItems->cart->totalQty >0)
                <table class="table table-hover">
                    <thead>
                    <tr>
                        <th>Product</th>
                        <th>Quantity</th>
                        <th class="text-center">Price</th>
                        <th class="text-center">Total</th>
                        <th> </th>
                    </tr>
                    </thead>
                    <tbody>
                    @foreach($cartItems->cart->items as $item)
                        <tr>
                            <td class="col-sm-8 col-md-6">
                                <div class="media">
                                    <div class="media-body">
                                        <h4 class="media-heading">{{$item->item->name}}</h4>
                                    </div>
                                </div>
                            </td>
                            <td class="col-sm-1 col-md-1" style="text-align: center">
                                {{$item->qty}}
                            </td>
                            <td class="col-sm-1 col-md-1 text-center"><strong>${{$item->price}}</strong></td>
                            <td class="col-sm-1 col-md-1 text-center"><strong>${{$item->total}}</strong>
                            </td>
                            <td class="col-sm-5 col-md-5">
                                <a class="btn btn-danger" href="{{url($link.'/removeItem/'.$item->item->id)}}">
                                    Remove
                                </a>
                            </td>
                        </tr>
                    @endforeach
                    @if(isset($cartItems->cart->totalQty) && $cartItems->cart->totalQty >0)
                        <tr>
                            <td>  </td>
                            <td>  </td>
                            <td>  </td>
                            <td><h5>Total quantity</h5></td>
                            <td class="text-right"><h5><strong>{{$cartItems->cart->totalQty}}</strong></h5></td>
                        </tr>
                    @endif
                    @if(isset($cartItems->cart->totalPrice) && $cartItems->cart->totalPrice >0)
                        <tr>
                            <td>  </td>
                            <td>  </td>
                            <td>  </td>
                            <td><h3>Total</h3></td>
                            <td class="text-right"><h3><strong>${{$cartItems->cart->totalPrice}}</strong></h3></td>
                        </tr>
                    @endif
                    <tr>
                        <td>  </td>
                        <td>  </td>
                        <td>  </td>
                        <td>
                            <a href="{{url($link)}}" type="button" class="btn btn-default">
                                <span class="glyphicon glyphicon-shopping-cart"></span> Continue Shopping
                            </a>
                        </td>
                        <td>
                            <a href="{{url($link.'/checkout')}}" class="btn btn-success">
                                Checkout <span class="glyphicon glyphicon-play"></span>
                            </a>
                        </td>
                    </tr>
                    </tbody>
                </table>
            @else
                <h3>Sorry, You have not any items in your cart</h3>
                <a href="{{url($link)}}" type="button" class="btn btn-default">
                    <span class="glyphicon glyphicon-shopping-cart"></span> Continue Shopping
                </a>
            @endif
        </div>
    </div>
</div>
