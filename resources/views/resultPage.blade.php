@include('nav')
@include('qtyModal')
<div class="container">
    <div class="row">
        <div class="col-sm-12 col-md-10 col-md-offset-1">
            @if(isset($fail) && (isset($reason) && $reason == 'credit'))
                <h3>Sorry, Your Credit is not enough</h3>
                <a href="{{url($link)}}" type="button" class="btn btn-default">
                    <span class="glyphicon glyphicon-shopping-cart"></span> Continue Shopping
                </a>
            @elseif(isset($fail) && (isset($reason) && $reason == 'error'))
                <h3>Sorry, Error Happened</h3>
                <a href="{{url($link)}}" type="button" class="btn btn-default">
                    <span class="glyphicon glyphicon-shopping-cart"></span> Continue Shopping
                </a>
            @else
                <h3>Thank You for making Order ,It is Done Successfully</h3>
                <a href="{{url($link)}}" type="button" class="btn btn-default">
                    <span class="glyphicon glyphicon-shopping-cart"></span> Continue Shopping
                </a>
            @endif
        </div>
    </div>
</div>
