@include('nav')
<div class="container-fluid">
    <div class="row">
        <div class="col-md-12">

            <div class="row">
                @if(!is_null($allItems) and count($allItems)>0)
                    @foreach ($allItems as $item)
                        @foreach ($item as $i)
                            <div class="col-md-4">
                                <div class="card">
                                    <img class="card-img-top" alt="Bootstrap Thumbnail Third"
                                         src="https://www.layoutit.com/img/sports-q-c-600-200-1.jpg"/>
                                    <div class="card-block">
                                        <h3 class="card-title">
                                            {{$i->name}}
                                        </h3>
                                        <p class="card-text">
                                            {{$i->description}}
                                        </p>
                                        <p class="card-text">
                                            {{$i->price}} $
                                        </p>
                                        <p>
                                            <a class="btn btn-primary"
                                               href={{$link."/".$i->id}} id="add_card">Add To
                                                Card</a>
                                        </p>
                                    </div>
                                </div>
                            </div>
                        @endforeach
                    @endforeach
                @endif
            </div>

        </div>
    </div>
</div>
