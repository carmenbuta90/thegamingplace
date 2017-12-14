<?php

class Products extends CI_Controller{
    public function index(){
        //get all products
        $data['products'] = $this->Product_model->get_products();
        
        //load view
        $data['main_content']= 'products';
        $this->load->view('layouts/main', $data);
    }
    
    public function details($id){
        //get product details
        $data['product']= $this->Product_model->get_product_details($id);
        //load view
        $data['main_content']= 'details';
        $this->load->view('layouts/main', $data);
        
    }
}
