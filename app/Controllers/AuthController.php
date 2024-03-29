<?php

namespace App\Controllers;
use App\Models\CategoryModel;
use App\Models\ProductModel;
use App\Models\CartModel;
use App\Models\CustomersModel;
use CodeIgniter\Controller;

class AuthController extends Controller {

   
    public function login(){
      //echo 'God Is Love';
      return view('login');
    }

    public function signup(){
      return view('signup');
    }

 public function register_old()
    {
        // Load the necessary helper libraries
        helper(['form', 'url']);

        // Load the model
        $model = new CustomersModel();

        // Validate form input
        // $rules = [
        //     'name'     => 'required',
        //     'username' => 'required|is_unique[customers.username]',
        //     'email'    => 'required|valid_email|is_unique[customers.email]',
        //     'phone'    => 'required',
        //     'password' => 'required|min_length[8]'
        // ];

        // if ($this->validate($rules)) {
            // If validation passes, insert into database
            $model->save([
                'name'     => $this->request->getVar('name'),
                'username' => $this->request->getVar('username'),
                'email'    => $this->request->getVar('email'),
                'phone'    => $this->request->getVar('phone'),
                'password' => password_hash($this->request->getVar('password'), PASSWORD_DEFAULT)
            ]);

            // Return success response
            return $this->response->setJSON(['success' => true, 'message' => 'Registration successful']);
        // } else {
        //     // Return validation errors
        //     return $this->response->setJSON(['success' => false, 'errors' => $this->validator->getErrors()]);
        // }
    }

    public function register()
    {
        helper(['form']);

        if ($this->request->getMethod() === 'post') {
            $rules = [
              'name'     => 'required',
            'username' => 'required|is_unique[customers.username]',
            'email'    => 'required|valid_email|is_unique[customers.email]',
            'phone'    => 'required',
            'pass' => 'required|min_length[4]'
            ];

            if ($this->validate($rules)) {
                $model = new \App\Models\CustomersModel();

                $model->save([
                    'name' => $this->request->getVar('name'),
                    'username' => $this->request->getVar('username'),
                    'email' => $this->request->getVar('email'),
                    'phone' => $this->request->getVar('phone'),
                    'password' => password_hash($this->request->getVar('pass'), PASSWORD_DEFAULT)
                ]);

                return $this->response->setJSON(['success' => true, 'message' => 'Registration successful']);
            } else {
              return $this->response->setJSON(['success' => false, 'errors' => $this->validator->getErrors()]);
            }
        }
        
    }

    public function signin()
    {
        helper(['form']);

        if ($this->request->getMethod() === 'post') {
            $rules = [
                'email' => 'required|valid_email',
                'pass' => 'required'
            ];

            if ($this->validate($rules)) {
                $model = new \App\Models\CustomersModel();

                $user = $model->where('email', $this->request->getVar('email'))->first();

                if ($user && password_verify($this->request->getVar('pass'), $user['password'])) {
                    // echo 'God is Love';
                    $session = session();
                $session->set('user_id', $user['id']);
                    return $this->response->setJSON(['success' => true, 'message' => 'Login successful']);
                } else {
                  return $this->response->setJSON(['success' => false, 'errors' => 'Invalid credentials']);
                }
            } else {
              return $this->response->setJSON(['success' => false, 'errors' => $this->validator->getErrors()]);
            }
        }

    }
    
}
