<?php

namespace App\Models;

use CodeIgniter\Model;

class CategoryModel extends Model
{
    protected $table = 'prod_category';
    protected $primaryKey = 'id';
    protected $allowedFields = ['order_no', 'name', 'descrp', 'image_path', 'status','created_date','created_by','updated_on','updated_by','page_url'];
    
}

