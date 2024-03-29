<?php

namespace App\Controllers;
use App\Models\CategoryModel;
use App\Models\ProductModel;
use CodeIgniter\Controller;

class Home extends BaseController
{
    public function index($category = null): string
    {
        
        $categoryModel = new CategoryModel();
         $productModel = new ProductModel();
        
         $productsPerPage = 3;
        $offset = 0;
        $data['categories'] = $categoryModel->where('status', 1)->findAll();
        $categoryId = $this->request->getGet('category');
        if ($categoryId && $categoryId != 'all') {
            $data['categoriesWithProducts'] = $productModel->getProductsByCategory($categoryId);
            $data['categories'] = $categoryModel->where('status',1)->findAll(); 
        } else {
            // $data['categoriesWithProducts'] = $productModel->getAllCategoriesWithProducts();
            $data['categoriesWithProducts'] = $productModel->load($offset, $productsPerPage);
            $data['categories'] = $categoryModel->where('status',1)->findAll(); 
        }

        return view('shop-products', $data);
    }


public function loadMoreProductss()
{
    $page = $this->request->getGet('page'); 
    $productsPerPage = 10; 
    $offset = ($page - 1) * $productsPerPage;
    $limit = $productsPerPage;
    $productModel = new ProductModel();
    $data['categoriesWithProducts'] = $productModel->load($offset, $limit);
    //echo view('shop-products', $data); 
      $output = view('partials/product_cards', $data); 
      return $this->response->setJSON(['html' =>' $output']);
}

public function loadMoreData(): string
{
    $lastCategoryId = $this->request->getGet('lastCategoryId');
    $limit = $this->request->getGet('limit'); // Get limit parameter from request
    $offset = $this->request->getGet('offset'); // Get offset parameter from request

    $productModel = new ProductModel();
    $data['categoriesWithProducts'] = $productModel->loadMoreData($lastCategoryId, $limit, $offset);

    return view('partials/product_cards', $data);
}
public function loadMoreProducts()
{
    // Assuming $offset and $limit are set based on pagination parameters
    $offset =3 /* Calculate offset */;
    $limit = 6; // or any number you prefer

    // Fetch more products based on offset and limit
    $productModel = new ProductModel();
    $data['categoriesWithProducts'] = $productModel->load($offset, $limit);

    // Load the view for additional products
    return view('partials/product_cards', $data);
}
public function static(){
    return view('static');
}


}
