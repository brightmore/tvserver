<?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');

class Welcome extends CI_Controller {

    function __construct()
    {
        parent::__construct();
    }
    /**
     * Index Page for this controller.
     *
     * Maps to the following URL
     * 		http://example.com/index.php/welcome
     * 	- or -  
     * 		http://example.com/index.php/welcome/index
     * 	- or -
     * Since this controller is set as the default controller in 
     * config/routes.php, it's displayed at http://example.com/
     *
     * So any other public methods not prefixed with an underscore will
     * map to /index.php/welcome/<method_name>
     * @see http://codeigniter.com/user_guide/general/urls.html
     */
    public function index() {
       // $query = $this->db->query('SELECT * FROM movies');
        $category = $this->input->get('category');
        $query = $this->db->get_where("movies",array("category_id"=>$category));
        $response = array();

     //   var_dump($query->result());
        
     
           var_dump($query->result());

        if ($query->num_rows() > 0) {
            
            foreach($query->result() as $row){
                $outp = array();
                $outp['category_id'] = $row->category_id;
                $outp['title'] = $row->title;
                $outp['description'] = $row->description;
                $outp['image_url']= $row->image_url;
                $outp['year'] = $row->year;
                
                array_push($response,$outp);
            }
          
           // $this->response(array("result" => $response), 200);
        } else {
           // $this->response(array("result" => false), 200);
        }

       
        var_dump($response);
      //  $this->load->view('welcome_message');
    }
    
    function tvprograms() {
        $sql = "Select "
                . "groupedchannels.id,"
                . "groupedchannels.GroupName,"
                . "groupedchannels.ChannelName,"
                . "tvprogram.Multicast "
                . "From groupedchannels "
                . "LEFT JOIN tvprogram ON groupedchannels.ChannelName = tvprogram.ChannelName";
        $query = $this->db->query($sql);
        $response = array();
        if ($query->result()) {
            foreach ($query->result_array() as $row) {
                $outp = array();
                $outp["id"] = $row["id"];
                $outp["category"] = $row["GroupName"];
                $outp["channel_name"] = $row["ChannelName"];
                $outp["multicast"] = $row["Multicast"];

                array_push($response, $outp);
            }

            echo json_encode( array('result' => $response));
        } else {
           echo  json_encode(array("result" => false));
        }
    }
    
    function categories() {

        $query = $this->db->query('SELECT * FROM categories');
        $response = array();

        if ($query->num_rows() > 0) {
            foreach ($query->result() as $row) {

                $outp = array();
                $outp['category_id'] = $row->category_id;
                $outp['category'] = $row->category;
                $outp['description'] = $row->description;
                $outp['image_url'] = $row->image;
                //   $outp['year'] = $row->year;
                //  var_dump($outp);
                array_push($response, $outp);
            }

          echo json_encode( array('result' => $response));
        } else {
           echo  json_encode(array("result" => false));
        }
    }

    function randomMovieList(){
        $this->db->select("*");
        $this->db->limit(50);
        $this->db->order_by("title","desc");
        $query = $this->db->get("movies");
        
        $response = array();
        if($query->num_rows() > 0){
            foreach( $query->result() as $row){
                $outp = array();
                $outp['category_id'] = $row->category_id;
                $outp['title'] = $row->title;
                $outp['description'] = $row->description;
                $outp['image_url'] = $row->image_url;
                $outp['year'] = $row->year;
                $outp['video_url'] = $row->video_url;
                array_push($response, $outp);
            }
            
             echo json_encode( array('result' => $response));
        }else{
            echo  json_encode(array("result" => false));
        }
    }
    
     function moviesList($category) {

        $this->db->select("*");
        $this->db->where(array("category_id" => $category));
        $query = $this->db->get("movies");

        $response = array();

        if ($query->num_rows() > 0) {

            foreach ($query->result() as $row) {
                $outp = array();
                $outp['category_id'] = $row->category_id;
                $outp['title'] = $row->title;
                $outp['description'] = $row->description;
                $outp['image_url'] = $row->image_url;
                $outp['year'] = $row->year;
                $outp['video_url'] = $row->video_url;
                array_push($response, $outp);
            }

          echo json_encode( array('result' => $response));
        } else {
           echo  json_encode(array("result" => false));
        }
    }
    
    function musicCategories() {
        $this->db->select('*');
        $query = $this->db->get("musicCategory");
        $response = array();
        if ($query->num_rows() > 0) {
            foreach ($query->result() as $row) {
                $outp = array();
                $outp['categoryTitle'] = $row->categoryTitle;
                $outp['poster'] = $row->poster;
                array_push($response, $outp);
            }

          echo json_encode( array('result' => $response));
        } else {
           echo  json_encode(array("result" => false));
        }
    }

    
    function musicUnderCategory($category) {
       
        $response = array();

        if ($category == 'all') {
            $this->db->select("*"); 
        } else {
            $this->db->select("*");
            $this->db->where(array('category_id' => $category));
        }

        $query = $this->db->get('music');


        if ($query->num_rows() > 0) {
            $outp = array();
            foreach ($query->result() as $row) {
                $outp['title'] = $row->title;
                $outp['musicfile'] = $row->musicfile;
                array_push($response, $outp);
            }
            
            echo json_encode( array('result' => $response));
        } else {
           echo  json_encode(array("result" => false));
        }
    }

    function test($category){
        
        $this->db->select("*");
        $this->db->where(array("category_id"=>$category));
        $query = $this->db->get("movies");
        
       // $query = $this->db->get_where("movies",array("category_id"=>$category));
        $response = array();

     //   var_dump($query->result());
        
           var_dump($query->result());

        if ($query->num_rows() > 0) {
            
            foreach($query->result() as $row){
                $outp = array();
                $outp['category_id'] = $row->category_id;
                $outp['title'] = $row->title;
                $outp['description'] = $row->description;
                $outp['image_url']= $row->image_url;
                $outp['year'] = $row->year;
                
                array_push($response,$outp);
            }
          
           // $this->response(array("result" => $response), 200);
        } else {
           // $this->response(array("result" => false), 200);
        }

       
        var_dump($response);
      //  $this->load->view('welcome_message');
    }

}

/* End of file welcome.php */
/* Location: ./application/controllers/welcome.php */