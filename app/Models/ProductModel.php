<?php

namespace App\Models;

use CodeIgniter\Model;

class ProductModel extends Model
{
    protected $table = 'products';
    public function getAllCategoriesWithProducts() {
        $builder = $this->db->table('prod_category AS c');
        $builder->select('c.*,c.name as cname, p.*, ps.*, size.name as size_name');
        $builder->join('prod_subcateg AS s', 's.categ_id = c.id');
        $builder->join('products AS p', 'p.subcateg_id = s.id');
        $builder->join('product_sizes AS ps', 'ps.prod_id = p.id');
        $builder->join('prod_sizes AS size', 'size.id = ps.size_id');
        $builder->where('c.status', 1); 
        $builder->where('p.status', 1); 
        $builder->orderBy('c.order_no', 'ASC');
        $builder->orderBy('s.order_no', 'ASC');
        $builder->orderBy('p.id', 'ASC');
        $query = $builder->get();
        
        $categories = [];
        foreach ($query->getResult() as $row) {
            $categories[$row->id]['category'] = $row;
            $categories[$row->id]['products'][] = $row;
        }
        
        return $categories;
    }

    public function getProductsByCategory($categoryId)
{
    $builder = $this->db->table('prod_category AS c');
    $builder->select('c.*,c.name as cname, p.*, ps.*, size.name as size_name');
    $builder->join('prod_subcateg AS s', 's.categ_id = c.id');
    $builder->join('products AS p', 'p.subcateg_id = s.id');
    $builder->join('product_sizes AS ps', 'ps.prod_id = p.id');
    $builder->join('prod_sizes AS size', 'size.id = ps.size_id');
    $builder->where('c.status', 1);
    $builder->where('p.status', 1);
    $builder->where('c.name', $categoryId); // Filter by category ID
    $builder->orderBy('c.order_no', 'ASC');
    $builder->orderBy('s.order_no', 'ASC');
    $builder->orderBy('p.id', 'ASC');
    $query = $builder->get();

    $categories = [];
    foreach ($query->getResult() as $row) {
        $categories[$row->id]['category'] = $row;
        $categories[$row->id]['products'][] = $row;
    }

    return $categories;
}



public function load($limit,$offset) {
    //print_r($limit);die;
    $builder = $this->db->table('prod_category AS c');
    $builder->select('c.*,c.name as cname, p.*, ps.*, size.name as size_name');
    $builder->join('prod_subcateg AS s', 's.categ_id = c.id');
    $builder->join('products AS p', 'p.subcateg_id = s.id');
    $builder->join('product_sizes AS ps', 'ps.prod_id = p.id');
    $builder->join('prod_sizes AS size', 'size.id = ps.size_id');
    $builder->where('c.status', 1); 
    $builder->where('p.status', 1); 
    // $builder->orderBy('c.order_no', 'ASC');
    // $builder->orderBy('s.order_no', 'ASC');
    $builder->orderBy('p.id', 'ASC');
    $builder->limit(3);
    $query = $builder->get();
    //echo $this->db->getLastQuery(); die;
    
    $categories = [];
    foreach ($query->getResult() as $row) {
        $categories[$row->id]['category'] = $row;
        $categories[$row->id]['products'][] = $row;
    }
    
    return $categories;
}


public function loadbalance($limit,$offset) {
  
    $builder = $this->db->table('prod_category AS c');
    $builder->select('c.*,c.name as cname, p.*, ps.*, size.name as size_name');
    $builder->join('prod_subcateg AS s', 's.categ_id = c.id');
    $builder->join('products AS p', 'p.subcateg_id = s.id');
    $builder->join('product_sizes AS ps', 'ps.prod_id = p.id');
    $builder->join('prod_sizes AS size', 'size.id = ps.size_id');
    $builder->where('c.status', 1); 
    $builder->where('p.status', 1); 
    // $builder->orderBy('c.order_no', 'ASC');
    // $builder->orderBy('s.order_no', 'ASC');
    $builder->orderBy('p.id', 'ASC');
    $builder->limit(100,3);
    $query = $builder->get();
    //echo $this->db->getLastQuery(); die;
    
    $categories = [];
    foreach ($query->getResult() as $row) {
        $categories[$row->id]['category'] = $row;
        $categories[$row->id]['products'][] = $row;
    }
    
    return $categories;
}

public function getProductsByCategoryNew($categoryId)
{
    $builder = $this->db->table('prod_category AS c');
    $builder->select('c.*,c.name as cname, p.*, ps.*, size.name as size_name');
    $builder->join('prod_subcateg AS s', 's.categ_id = c.id');
    $builder->join('products AS p', 'p.subcateg_id = s.id');
    $builder->join('product_sizes AS ps', 'ps.prod_id = p.id');
    $builder->join('prod_sizes AS size', 'size.id = ps.size_id');
    $builder->where('c.status', 1);
    $builder->where('p.status', 1);
    $builder->where('c.name', $categoryId); // Filter by category ID
    // $builder->orderBy('c.order_no', 'ASC');
    // $builder->orderBy('s.order_no', 'ASC');
    $builder->orderBy('p.id', 'ASC');
    // $builder->limit(10,3);
    $query = $builder->get();
    //echo $this->db->getLastQuery(); die;

    $categories = [];
    foreach ($query->getResult() as $row) {
        $categories[$row->id]['category'] = $row;
        $categories[$row->id]['products'][] = $row;
    }

    return $categories;
}
public function loadCount($limit, $offset) {
    $builder = $this->db->table('prod_category AS c');
    $builder->select('c.*,c.name as cname, p.*, ps.*, size.name as size_name');
    $builder->join('prod_subcateg AS s', 's.categ_id = c.id');
    $builder->join('products AS p', 'p.subcateg_id = s.id');
    $builder->join('product_sizes AS ps', 'ps.prod_id = p.id');
    $builder->join('prod_sizes AS size', 'size.id = ps.size_id');
    $builder->where('c.status', 1); 
    $builder->where('p.status', 1); 
    $builder->orderBy('p.id', 'ASC');
    $builder->limit(3); // Apply limit and offset here
    $query = $builder->get();
    
    // Get the total count
    $totalCount = $this->db->table('prod_category AS c')
                        ->join('prod_subcateg AS s', 's.categ_id = c.id')
                        ->join('products AS p', 'p.subcateg_id = s.id')
                        ->join('product_sizes AS ps', 'ps.prod_id = p.id')
                        ->join('prod_sizes AS size', 'size.id = ps.size_id')
                        ->where('c.status', 1)
                        ->where('p.status', 1)
                        ->countAllResults();

    $categories = [];
    foreach ($query->getResult() as $row) {
        $categories[$row->id]['category'] = $row;
        $categories[$row->id]['products'][] = $row;
    }
    
    return ['total_count' => $totalCount, 'results' => $categories];
}
public function getProductsByCategoryCount($categoryId)
{
    $builder = $this->db->table('prod_category AS c');
    $builder->select('c.*,c.name as cname, p.*, ps.*, size.name as size_name');
    $builder->join('prod_subcateg AS s', 's.categ_id = c.id');
    $builder->join('products AS p', 'p.subcateg_id = s.id');
    $builder->join('product_sizes AS ps', 'ps.prod_id = p.id');
    $builder->join('prod_sizes AS size', 'size.id = ps.size_id');
    $builder->where('c.status', 1);
    $builder->where('p.status', 1);
    $builder->where('c.name', $categoryId); // Filter by category ID
    $builder->orderBy('c.order_no', 'ASC');
    $builder->orderBy('s.order_no', 'ASC');
    $builder->orderBy('p.id', 'ASC');
    $query = $builder->get();

    $totalCount = $this->db->table('prod_category AS c')
                        ->join('prod_subcateg AS s', 's.categ_id = c.id')
                        ->join('products AS p', 'p.subcateg_id = s.id')
                        ->join('product_sizes AS ps', 'ps.prod_id = p.id')
                        ->join('prod_sizes AS size', 'size.id = ps.size_id')
                        ->where('c.status', 1)
                        ->where('p.status', 1)
                        ->where('c.name', $categoryId)
                        ->countAllResults();

    $categories = [];
    foreach ($query->getResult() as $row) {
        $categories[$row->id]['category'] = $row;
        $categories[$row->id]['products'][] = $row;
    }
    
    return ['total_count' => $totalCount, 'results' => $categories];
}

}

