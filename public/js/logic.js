$(document).ready(function () {
    $('button').on('click', function () {
        var type = $(this).attr('class').split(' ');
        if (type[2] == 'qty') {
            var id = $(this).attr('id').split(' ');
            $('#qtyInput').val(id[3]);
            $('#itemId').val(id[1]);
        }
    })
});
