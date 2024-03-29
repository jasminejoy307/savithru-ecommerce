
<?php $this->extend("common_layout");?>
<?=$this->section("content");?>
    <main class="shopping-main-content">
        <!-- Secttion  -->
        <div class="container">
            <section class="uh-section">
           <a href="#" class="view-all-items has-category">View All</a>
                <h4 class="uh-section__heading">Heading</h4>
                <a href="#" class="view-all-items has-category">View All</a>
                <h4 class="uh-section__heading"></h4>
                <!-- <div class="owl-carousel tag-carousel view-all"> -->
                    <button style="border-radius: 16px;color: #6c757d;border-color: #D0D5DD;" class="btn btn-sm btn-outline-light btn-dark" onclick="updateCategoryUrl('all')">All</button>
                <?php foreach ($categories as $category):?>
                    <button style="border-radius: 16px;color: #6c757d;border-color: #D0D5DD;" class="btn btn-sm btn-outline-light" onclick="updateCategoryUrl('<?= $category['name']; ?>')"><?= $category['name']; ?></button>
                <?php endforeach; ?></br></br></br>
                <!-- </div> -->
                <div class="row row-cols-1 row-cols-md-2 row-cols-lg-3" id="productContainer">
                <?php foreach ($categoriesWithProducts as $categoryId => $category): ?>
            <?php $otherProjectBaseUrl = "http://localhost/writing-pad/public/uploads/"; ?>
            <?php foreach ($category['products'] as $product): ?>
                    <div class="col">
                        <div class="default-card default-card-border sm-padding">

                        <img src="<?= $otherProjectBaseUrl . $product->image_path; ?>" style="width: 400px; height: 300px;" alt="" class="card__img">
                            <div class="card__heading-up">
                            <span class="card__category"><?= $category['category']->cname; ?></span>
                                <span class="card__divider"></span>
                                <span class="card__mins-read"><?= $product->size_name; ?></span>
                            </div>
                            <h4 class="card__heading">
                            <?= $product->name; ?>
                            </h4>
                            
                            <h4 class="card__price">
            <span style="text-decoration: line-through; color: red;">MRP: Rs. <?= $product->mrp; ?></span>
            &nbsp;Price: Rs. <?= $product->sprice; ?>
        </h4>
                            <div class="divider-hr"></div>
                            <div class="btns-row">
                                <button class="btn btn-sm text-primary">
                                    <div class="icon-text-inline mb-0 ">
                                        <span class="material-symbols-outlined">favorite</span>
                                        <span class="icon-text-inline__txt">Add to Favorite</span>
                                    </div>
                                </button>
                                <button class="btn btn-dark btn-sm ">
                                    <div class="icon-text-inline mb-0">
                                        <span class="material-symbols-outlined">shopping_cart </span>
                                        <span class="icon-text-inline__txt">Add to Cart</span>
                                    </div>
                                </button>
                            </div>
                        </div>
                    </div>
                    <?php endforeach; ?>
                 <?php endforeach; ?>
                </div>
            </section>
        </div>
    </main><!-- End Main Content -->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>

    <script>
function updateCategoryUrl(category) {
    let url;
    if (category === 'all') {
        url = '<?= base_url("Home/index") ?>?category=all';
    } else {
        url = '<?= base_url("Home/index") ?>?category=' + encodeURIComponent(category);
    }
    // Redirect to the constructed URL
    window.location.href = url;
}


//     $(window).scroll(function() {
//         if($(window).scrollTop() + $(window).height() >= $(document).height()) {
//             loadMoreData();
//         }
  
    
//     function loadMoreData() {
//         var lastCategoryId =2;
//     var limit = 10; 
//     var offset = 20; 
//     var url = '<?= base_url("Home/loadMoreData") ?>?lastCategoryId=' + lastCategoryId + '&limit=' + limit + '&offset=' + offset;
        
//         $.ajax({
//             url: url,
//             type: 'get',
//             beforeSend: function() {
              
//             },
//             success: function(response) {
            
//                 // $('#productContainer').append(response);
//                 document.getElementById('productContainer').innerHTML += response;

//             },
//             error: function(xhr) {
             
//             }
//         });
//     }
// });


$(document).ready(function() {
    // Variable to keep track of whether products are being loaded
    var loading = false;

    // Function to check if user has scrolled to bottom of page
    $(window).scroll(function() {
        if ($(window).scrollTop() + $(window).height() >= $(document).height() - 100) {
            // If not already loading products, fetch more
            if (!loading) {
                loading = true;
                fetchMoreProducts();
            }
        }
    });

    // Function to fetch more products
    function fetchMoreProducts() {
        // AJAX request to fetch more products
        $.ajax({
            url: '<?= base_url("Home/loadMoreProducts") ?>',
            type: 'GET',
            dataType: 'html',
            success: function(response) {
                // Append fetched products to the product container
                $('#productContainer').append(response);
                loading = false;
            }
        });
    }
});

</script>



    <?=$this->endSection();?>