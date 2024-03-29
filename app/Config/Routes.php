<?php

use CodeIgniter\Router\RouteCollection;

/**
 * @var RouteCollection $routes
 */
//$routes->get('/', 'Home::index');
//$routes->get('Home/index', 'HomeController::index');
$routes->get('/login', 'AuthController::login');
$routes->get('signup', 'AuthController::signup');
$routes->POST('/register', 'AuthController::register');
$routes->POST('/signin', 'AuthController::signin');
$routes->get('/cart', 'CartController::index');

$routes->get('/', 'Home::index');
// $routes->get('/ststic', 'Home::static');
// $routes->get('(:any)', 'Home::index/$1');

//$routes->setDefaultController('ClientController');
$routes->get('/page-scroll-load-more', 'ClientController::index');
$routes->get('/onScrollLoadMore', 'ClientController::onScrollLoadMore');

$routes->get('/product-list', 'ProductController::index');
$routes->get('/onScroll', 'ProductController::onScrollLoadMore');
$routes->get('(:any)', 'ProductController::index/$1');


$routes->POST('addToCart', 'CartController::addtocart');
$routes->POST('remove_cart_item', 'CartController::change_status');
$routes->POST('remove_all_items', 'CartController::remove_all_items');




