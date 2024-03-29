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
                                        <span class="icon-text-inline__txt">Add to Cart</span>
                                    </div>
                                </button>
                            </div>
                        </div>
                    </div>
                    <?php endforeach; ?>
                 <?php endforeach; ?>