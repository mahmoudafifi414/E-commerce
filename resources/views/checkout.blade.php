@include('nav')
<div class="container">
    <div class="row-fluid">
        <div>
            @if ($errors->any())
                <div class="alert alert-danger">
                    <ul>
                        @foreach ($errors->all() as $error)
                            <li>{{ $error }}</li>
                        @endforeach
                    </ul>
                </div>
            @endif
        </div>
        <form class="form-horizontal" action="{{url('/callCheckoutApi')}}" method="post">
            <fieldset>
                <div id="legend">
                    <legend class="">Payment</legend>
                </div>
                <div>
                    <h2>Order Amount: <span style="color: red;"> ${{Cache::get('cart')->totalPrice}}</span></h2>
                </div>
                <div class="control-group">
                    <label class="control-label" for="email">Customer Address</label>
                    <div class="controls">
                        <input required="required" type="text" id="email" name="address" placeholder=""
                               class="input-xlarge">
                    </div>
                </div>

                <div class="control-group">
                    <label class="control-label" for="email">Customer Telephone</label>
                    <div class="controls">
                        <input required="required" type="text" id="email" name="telephone" placeholder=""
                               class="input-xlarge">
                    </div>
                </div>
                <!-- Submit -->
                <div class="control-group">
                    <div class="controls">
                        <button class="btn btn-success" type="submit">Pay Now</button>
                        <a class="btn btn-info" href="{{url('/')}}">Cancel and back merchant</a>
                    </div>
                </div>

            </fieldset>
        </form>
    </div>
</div>
