<?php 

namespace App\Models;
use CodeIgniter\Database\ConnectionInterface;
use CodeIgniter\Model;
 

class ClientModel extends Model
{

    protected $table = 'clients';
    protected $primaryKey = 'id';
    protected $allowedFields = [
      'client_name', 
      'client_email'
    ];

}