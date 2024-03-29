<?php
namespace App\Models;

use CodeIgniter\Model;

class CustomersModel extends Model
{
    protected $table = 'customers';
    protected $allowedFields = ['name', 'username', 'email', 'phone', 'password'];
}
