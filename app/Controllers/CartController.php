<?php

namespace App\Controllers;
use App\Models\CategoryModel;
use App\Models\ProductModel;
use App\Models\CartModel;
use CodeIgniter\HTTP\RequestInterface;
use CodeIgniter\Cookie\Cookie;
use DateTime;
use CodeIgniter\Controller;


class CartController extends Controller {

    protected $cartModel;

    public function __construct()
    {
        $this->cartModel = new CartModel();
    }
    public function index(){
        $userId = session()->get('user_id');
        $cartModel = new \App\Models\CartModel();
        $productModel = new \App\Models\ProductModel();
        $cartItems = $cartModel->select('cart.*, products.*,product_sizes.*,cart.id as cart_id')
                              ->join('products', 'products.id = cart.product_id')
                              ->join('product_sizes', 'product_sizes.prod_id = products.id')
                              ->join('prod_sizes as p', 'p.id = product_sizes.size_id')
                              ->where('cart.user_id', $userId)
                              ->where('cart.status', 1)
                              ->findAll();
        //print_r($cartItems);die;
        return view ('shop-cart',['cartItems' => $cartItems]);
    }

    public function addtocart()
    {
 
        $userId = session()->get('user_id');
        $product_id=$this->request->getVar('productId');
       $cartData = [
           'user_id' => $userId,
           'product_id' =>$product_id,
           'qty' => 1,
           'status' => 1
       ];

       if($this->cartModel->insert($cartData)){
        return $this->response->setJSON(['success' => true, 'message' => 'Added to cart']);
       }
       else{
        return $this->response->setJSON(['success' => false, 'message' => 'error']);
       }

    }
  

    function generate_cookie_id() {
        // Generate a unique ID based on the current timestamp
        $uniqueId = uniqid('', true);
    
        // Add additional randomness using md5 hashing
        $cookieId = md5($uniqueId);
    
        return $cookieId;
    }
    
    public function addtocart_old()
    {

        $userId = session()->get('user_id');
       // print_r($userId); die;
        $cookieId = $this->request->getCookie('cookieId');
        if (!$cookieId) {
            $cookieId = md5($_SERVER['REMOTE_ADDR'] . $_SERVER['HTTP_USER_AGENT']);
            set_cookie('cookieId', $cookieId, 3600); // Set cookie for 1 hour
        }
    
        // Print the cookie ID
        echo "Cookie ID: $cookieId"; die;    
       // echo 'Cookie%20ID%3A%2066056563a57cc';

        if (session()->get('isLoggedIn')) {
            $userId = session()->get('user_id');

            // Update cart items with the user's ID
            $this->cartModel->where('cookieId', $cookieId)->where('userId', 0)->set('userId', $userId)->update();
        }

        $existingCartItem = $this->cartModel->where('productId', $request->getVar('product'))
            ->where('cookieId', $cookieId)
            ->where('userId', session()->get('isLoggedIn') ? session()->get('userId') : 0)
            ->first();

        if ($existingCartItem) {
            $qty = $existingCartItem->qty + $request->getVar('qty');
            $this->cartModel->update($existingCartItem->id, ['qty' => $qty]);
            return true;
        } else {
            $data = [
                'productId' => $request->getVar('product'),
                'userId' => session()->get('isLoggedIn') ? session()->get('userId') : 0,
                'cookieId' => $cookieId,
                'qty' => $request->getVar('qty')
            ];
            $this->cartModel->insert($data);
            return true;
        }
    }

    public function login(){
        echo 'God Is Love';
      }


      public function change_status()
     {
    if ($this->request->isAJAX()) {
        $cartItemId = $this->request->getPost('cartItemId');

        $cartModel = new \App\Models\CartModel();
        $cartModel->update($cartItemId, ['status' => 0]);
        return $this->response->setJSON(['success' => true]);
    } else {
        return $this->response->setJSON(['success' => false, 'error' => 'Invalid request']);
    }
  }

  public function remove_all_items()
{
    if ($this->request->isAJAX()) {
        $userId = session()->get('user_id');
        
        $cartModel = new \App\Models\CartModel();
        $cartModel->where('user_id', $userId)->update(['status' => 0]);
        $lastQuery =   $cartModel->getLastQuery();
    echo $lastQuery;die;
        return $this->response->setJSON(['success' => true]);
    } else {
        
        return $this->response->setJSON(['success' => false, 'error' => 'Invalid request']);
    }
}



    
}
