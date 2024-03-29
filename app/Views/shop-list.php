
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
                <?php
            $currentCategory = $currentCategory ?? 'all';
        ?>
        <button style="border-radius: 16px;color: #6c757d;border-color: #D0D5DD;" class="btn btn-sm btn-outline-light <?= $currentCategory === 'all' ? 'active-category' : '' ?>" onclick="updateCategoryUrl('all')">All</button>
        <?php foreach ($categories as $categoryItem):?>
            <button style="border-radius: 16px;color: #6c757d;border-color: #D0D5DD;" class="btn btn-sm btn-outline-light <?= $currentCategory === $categoryItem['name'] ? 'active-category' : '' ?>" onclick="updateCategoryUrl('<?= $categoryItem['name']; ?>')"><?= $categoryItem['name']; ?></button>
        <?php endforeach; ?></br></br></br>
                <!-- </div> -->
                <div class="row row-cols-1 row-cols-md-2 row-cols-lg-3"  id="loadMoreBlock">
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
                                <button class="btn btn-dark btn-sm add-to-cart-btn" data-product-id="<?= $product->id ?>">
                                    <div class="icon-text-inline mb-0">
                                        <span class="material-symbols-outlined">shopping_cart </span>
                                        <span class="icon-text-inline__txt ">Add to Cart</span>
                                    </div>
                                </button>
                            </div>
                        </div>
                    </div>
                    <?php endforeach; ?>
                 <?php endforeach; ?>
                </div>
                <div id="endOfContentMessage" style="display: none;">
    <p>No more content to load</p>
</div>
            </section>
        </div>
    </main><!-- End Main Content -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <script>
function updateCategoryUrl(category) {
    let url;
    if (category === 'all') {
        url = '<?= base_url("ProductController/index") ?>?category=all';
    } else {
        url = '<?= base_url("ProductController/index") ?>?category=' + encodeURIComponent(category);
    }
    // Redirect to the constructed URL
    window.location.href = url;
    const buttons = document.querySelectorAll('.btn');
    buttons.forEach(button => button.classList.remove('active-category'));

    // Add the active class to the clicked button
    event.target.classList.add('active-category');
}
</script>
<script>
var baseURL = "<?php echo base_url(); ?>";
var page =1;
var isLoading = false;
var allDataLoaded = false;
var maxPageCount = <?php echo $maxPageCount; ?>;// Set the maximum page count
var xyz=maxPageCount-1;
var currentCategory = getQueryParam('category') || 'all';

$(window).scroll(function () {
    if ($(window).scrollTop() + $(window).height() >= $(document).height() - 555) {
        if (!isLoading && !allDataLoaded && page < maxPageCount) { 
            isLoading = true;
            page++; 
            initLoadMore(page, currentCategory); 
        }
    }
});

function initLoadMore(page, category) {
    $.ajax({
        url: baseURL + "/onScroll?page=" + page + "&category=" + category,// Include the category in the URL
        type: "GET",
        dataType: "html",
    }).done(function (data) {
        isLoading = false;
        if (data.trim() == '') {
            allDataLoaded = true;
            $('#loader').hide();
            $('#endOfContentMessage').show();
            console.log('All data loaded');
            return;
        }
        $('#loader').hide();
        $('#loadMoreBlock').append(data).show('slow');
    }).fail(function (jqXHR, ajaxOptions, thrownError) {
        console.log('Failed to load more data');
    });
}

function getQueryParam(name) {
    const urlParams = new URLSearchParams(window.location.search);
    return urlParams.get(name);
}
$(document).ready(function() {
$('#loadMoreBlock').on('click', '.add-to-cart-btn', function() {
    var productId = $(this).data('product-id'); 
    //alert(productId);
    addToCart(productId);
});
function addToCart(productId) {
    $.ajax({
        url: baseURL + "addToCart",
        method: "POST", // Set the method to POST
        data: { productId: productId },
        success: function(response) {
           alert("Product added to cart successfully!");
           window.location.href = '<?= base_url('cart') ?>';
        },
        error: function(xhr, status, error) {
            console.error("Error adding product to cart:", error);
        }
    });
}
});
</script>



    <?=$this->endSection();?>