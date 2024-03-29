<?php

namespace App\Controllers;

use App\Models\ClientModel;
use CodeIgniter\Controller;

class ClientController extends Controller {

    protected $clientModel; // Define the property

    public function __construct() {
        // Initialize the clientModel property in the constructor
        $this->clientModel = new ClientModel();
    }

    public function index() {
        helper(['form', 'url']);
        $data = [
            'clients' => $this->clientModel->paginate(4),
            'pager' => $this->clientModel->pager
        ];
        return view('index', $data);
    }
 
    public function onScrollLoadMore(){
        // $limit = 4; 
        // $page = $this->request->getVar('page');
        // $data['clients'] = $this->clientModel->paginate($limit, 'clients', $page);
        // //echo $this->clientModel->getLastQuery(); die;
        // return view('load_clients', $data);
        $limit = 1;
        $page = $this->request->getVar('page');
    
        // Fetch the next set of data based on pagination
        $data['clients'] = $this->clientModel->paginate($limit, 'clients', $page);
    
        if (empty($data['clients'])) {
            // If no more data is available, return an empty response
            return '';
        }
    
        return view('load_clients', $data);
    }    
}
