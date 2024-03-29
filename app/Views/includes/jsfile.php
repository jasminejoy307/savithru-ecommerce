<script src="<?= base_url('assets/js/jquery.min.js')?>"></script>
    <script src="<?= base_url('assets/js/bootstrap.bundle.min.js')?>"></script>
    <script src="<?= base_url('assets/js/owl.carousel.js')?>"></script>
    <script src="<?= base_url('assets/js/wp-custom.js')?>"></script>
    <script>
         $(document).ready(function() {
    $('.change-status').click(function(e) {
        e.preventDefault();
        var cartItemId = $(this).data('id');
        
        $.ajax({
            type: 'POST',
            url: '<?= base_url('remove_cart_item') ?>',
            data: { cartItemId: cartItemId },
            dataType: 'json',
            success: function(response) {
                alert("Cart Item Deleted!");
                location.reload();
            },
            error: function(xhr, status, error) {
                console.error(xhr.responseText);
            }
        });
    });

    $('.remove-all-items').click(function(e) {
        e.preventDefault();
        
        $.ajax({
            type: 'POST',
            url: '<?= base_url('remove_all_items') ?>',
            dataType: 'json',
            success: function(response) {
                alert(" All Cart Items Deleted!");
                //location.reload();
            },
            error: function(xhr, status, error) {
                console.error(xhr.responseText);
            }
        });
    });
}); 
    </script>