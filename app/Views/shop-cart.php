<?php $this->extend("common_layout");?>
<?=$this->section("content");?>
    <main class="shopping-main-content">
        
        <div class="container">
            <!-- Section -->
            <section class="uh-section">
                <h4 class="shop-heading">Cart</h4>
                <nav>
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="#">Home</a></li>
                        <li class="breadcrumb-item"><a href="#">Shop</a></li>
                        <li class="breadcrumb-item active" aria-current="page">Cart</li>
                    </ol>
                </nav>
            </section>
            <!-- Cart list-->
            <section class="cart-list-section">
                <div class="cart-list-section__row">
                    <div class="cart-list-section__left-col">
                    <?php foreach ($cartItems as $item): ?>
                        <div class="cart-item-box">
                       
                            <div class="cart-item-box__left-col">
                                <div class="cart-item-box__photo">
                               
                                    <?php $otherProjectBaseUrl = "http://localhost/writing-pad/public/uploads/"; ?>
                                    <img src="<?= $otherProjectBaseUrl . $item['image_path']; ?>" />
                                </div>
                                <div class="cart-item-box__txt">
                                    <h4 class="cart-item-box__heading">
                                    <?= $item['name'] ?>
                                    </h4>
                                    <!-- <div class="cart-item-box__desc">
                                        Immerse yourself in mother nature’s love to enjoy the amazing healing & inspiring benefits.
                                    </div> -->
                                </div>
                            </div>
                            <div class="cart-item-box__right-col">
                                <div class="cart-item-box__amount">Rs.<?= $item['sprice'] ?></div>
                                <div class="cart-item-box__qty">
                                    <select class="form-select form-select-sm">
                                        <option>1</option>
                                    </select>
                                    <button class="btn btn-outline-danger btn-sm change-status" data-id="<?= $item['cart_id'] ?>">X</button>
                                 
                                </div>
                            </div>
                           
                        </div>
                        <?php endforeach; ?>
                        <div class="d-flex justify-content-between">
                            <button class="btn btn-dark">
                            <a href="<?= base_url('product-list') ?>" style="color: rgb(245 241 255);">  <span class="icon-text-inline m-0">
                                    <span class="wpi-arrow_line_left"></span>
                                    <span class="icon-text-inline__txt">Back to shop</span>
                                </span>
                            </a>
                            </button>

                            <button class="btn btn-outline-danger remove-all-items">
                                <span class="icon-text-inline m-0">
                                    <span class="wpi-close"></span>
                                    <span class="icon-text-inline__txt">Remove All</span>
                                </span>
                            </button>
                        </div>
                    </div>
                    <div class="cart-list-section__right-col">
                        <!-- Coupon -->
                        <div class="coupon-box ">
                            <p>Have a coupon?</p>
                            <div class="input-group">
                                <input class="form-control" placeholder="Enter coupon">
                                <span class="input-group-text">
                                    <button class="btn btn-link p-0">Apply</button>
                                </span>
                            </div>
                        </div>
                        <!-- Checkout -->
                        <div class="checkout-box shadow">
                            <div class="checkout-box__row">
                                <span class="checkout-box__label">Subtotal</span>
                                <span class="checkout-box__amount">Rs. 1403.97</span>
                            </div>
                            <div class="checkout-box__row">
                                <span class="checkout-box__label">Discount</span>
                                <span class="checkout-box__amount text-success">(-) Rs.60.00</span>
                            </div>
                            <div class="checkout-box__row">
                                <span class="checkout-box__label">Tax</span>
                                <span class="checkout-box__amount text-danger">(+) Rs.14.00</span>
                            </div>
                            <div class="divider-hr"></div>
                            <div class="checkout-box__row total">
                                <span class="checkout-box__label">Total</span>
                                <span class="checkout-box__amount">Rs.1357.97</span>
                            </div>
                            <div class="d-grid">
                                <button class="btn btn-dark btn-lg">Checkout</button>
                            </div>
                           
                        </div>
                    </div>
                </div>
            </section>
        </div>
    </main><!-- End Main Content -->
    <?=$this->endSection();?>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script>
</script>
