<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Infinite Pagination</title>
<style>
    /* Style for product cards */
    .product-card {
        border: 1px solid #ccc;
        padding: 10px;
        margin: 10px;
        width: 200px;
        display: inline-block;
    }
</style>
</head>
<body>
    <!-- Product container -->
    <div id="productContainer"></div>
    <script src="http://localhost:8080/assets/js/jquery.min.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>


    <script>
        // Simulated product data
        const products = [
            "Product 1", "Product 2", "Product 3",
            "Product 4", "Product 5", "Product 6",
            "Product 7", "Product 8", "Product 9",
            "Product 10", "Product 11", "Product 12"
            // Add more products as needed
        ];

        // Number of products to load per page
        const productsPerPage = 6;

        // Initial index and load products
        let currentIndex = 0;
        loadProducts();

        // Function to load products
        function loadProducts() {
            const container = document.getElementById("productContainer");
            for (let i = 0; i < productsPerPage && currentIndex < products.length; i++) {
                const productCard = document.createElement("div");
                productCard.className = "product-card";
                productCard.textContent = products[currentIndex++];
                container.appendChild(productCard);
            }
        }

        // Function to check if user has scrolled to bottom of page
        window.addEventListener("scroll", function() {
            if (window.innerHeight + window.scrollY >= document.body.offsetHeight) {
                loadProducts();
            }
        });
    </script>
</body>
</html>
