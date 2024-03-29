<?php

namespace App\Controllers;
use App\Models\CategoryModel;
use App\Models\ProductModel;
use CodeIgniter\Controller;

class ProductController extends Controller {

    protected $ProductModel; 

    public function __construct() {
        $this->ProductModel = new ProductModel();
    }

    public function index($category = null): string
{
    $categoryModel = new CategoryModel();
    $productModel = new ProductModel();
    helper(['form', 'url']);
    // Number of products per page
    $productsPerPage = 3;

    // Get the page number from the query string
    $page = $this->request->getGet('page') ?: 1;

    // Calculate the offset based on the page number and number of products per page
    $offset = ($page - 1) * $productsPerPage;

    // Fetch categories
    $data['categories'] = $categoryModel->where('status', 1)->findAll();

    // Fetch products based on category or all products if no category specified
    $categoryId = $this->request->getGet('category');
    $data['currentCategory'] = $categoryId ;
    if ($categoryId && $categoryId != 'all') {
        $productsData = $productModel->getProductsByCategoryCount($categoryId, $offset, $productsPerPage);
      //  $data['categoriesWithProducts'] = $productModel->getProductsByCategoryNew($categoryId, $offset, $productsPerPage);
      $totalCount =$productsData['total_count'];
      $data['categoriesWithProducts'] = $productsData['results'];
    } else {
        // $data['categoriesWithProducts'] = $productModel->load($offset, $productsPerPage);
        // $totalCount =12;
        $productsData = $productModel->loadCount($offset, $productsPerPage);
        $totalCount = $productsData['total_count'];
        $data['categoriesWithProducts'] = $productsData['results'];
        //print_r($totalCount);die;
    }
    $maxPageCountt = ceil($totalCount / $productsPerPage);
    $maxPageCount=$maxPageCountt-2;
    $data['maxPageCount'] = $maxPageCount;
    $data['currentPage'] = $page;

   

    return view('shop-list', $data);
}

    public function onScrollLoadMore(){
        $limit = 1;
        $page = $this->request->getVar('page');
        $productModel = new ProductModel();
        $offset=3;
        $categoryId = $this->request->getGet('category');
    if ($categoryId && $categoryId != 'all') {
        $data['categoriesWithProducts'] = $productModel->getProductsByCategoryNew($categoryId);
    } else {
        $data['categoriesWithProducts'] = $productModel->loadbalance($offset, $limit);
    }
        //$data['categoriesWithProducts'] = $productModel->loadbalance($offset, $limit);
        if (empty($data['categoriesWithProducts'])) {
            // If no more data is available, return an empty response
            return '';
        }
    
        return view('product_cards', $data);
    }  
  
    
}
