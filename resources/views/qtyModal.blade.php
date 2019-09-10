<div class="modal fade" id="myModal" role="dialog">
    <div class="modal-dialog">

        <!-- Modal content-->
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal">&times;</button>
                <h4 class="modal-title">Modal Header</h4>
            </div>
            <div class="modal-body">
                <form action="{{url($link.'/updateQty')}}" method="get">
                    <p>Quantity</p>
                    <input id="qtyInput" type="number" name="qty">
                    <input id="itemId" type="hidden" name="itemId">
                    <button type="submit" class="btn btn-primary">Update</button>
                </form>

            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
            </div>
        </div>

    </div>
</div>
