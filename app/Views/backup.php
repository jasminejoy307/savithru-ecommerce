
<?php $this->extend("common_layout");?>
<?=$this->section("content");?>
    <main class="shopping-main-content">
        <!-- Secttion  -->
        <div class="container">
            <section class="uh-section">
                <a href="#" class="view-all-items has-category">View All</a>
                <h4 class="uh-section__heading">Heading</h4>
                <div class="owl-carousel tag-carousel view-all">
                    <button class="btn btn-sm btn-outline-light btn-dark">All</button>
                    <?php foreach ($categories as $category): ?>
                <button class="btn btn-sm btn-outline-light"><?= $category['name']; ?></button>
            <?php endforeach; ?>
                </div>
                <div class="row row-cols-1 row-cols-md-2 row-cols-lg-3">
                  
                <?php foreach ($categoriesWithProducts as $categoryId => $category): ?>
            <?php $otherProjectBaseUrl = "http://localhost/writing-pad/public/uploads/"; ?>
            <?php foreach ($category['products'] as $product): ?>
                <img src="<?= $otherProjectBaseUrl . $product->image_path; ?>" alt="" class="card__img">
                <div class="card__heading-up">
                    <span class="card__category"><?= $category['category']->name; ?></span>
                                <span class="card__divider"></span>
                                <span class="card__mins-read">23 Mins read</span>
                            </div>
                            <h4 class="card__heading">
                                I always loved aesthetics : A deep look at the workspace
                            </h4>
                            <div class="card__desc">
                                Quos nisi redarguimus, omnis virtus, omne decus, omnis vera laus deserenda est. Sed eum qui audiebant, quoad poterant, defendebant sententiam suam.
                            </div>
                            <h4 class="card__price">
                                Rs. 150
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
                    <!-- Item -->
                
                </div>
            </section>
        </div>
    </main><!-- End Main Content -->
    <?=$this->endSection();?>