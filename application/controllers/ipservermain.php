<?php

require(APPPATH . 'libraries/REST_Controller.php');
/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

class ipservermain extends REST_Controller {

    public function __construct() {
        parent::__construct();

        $this->output->set_content_type('application/json');
    }

    function tvprograms_get() {
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

            $this->response(array("result" => $response), 200);
        } else {
            $this->response(array("result" => false), 200);
        }
    }

    function categories_get() {

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

            $this->response(array("result" => $response), 200);
        } else {
            $this->response(array("result" => false), 200);
        }
    }

    function moviesList_get() {

        if (!$this->get('category')) {
            $this->response(array("om" => "option"), 400);
        }

        $category = $this->get('category');

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

            $this->response(array("result" => $response), 200);
        } else {
            $this->response(array("result" => false), 200);
        }
    }

    function musicCategories_get() {
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

            $this->response(array('result' => $response));
        } else {
            $this->response(array("result" => false), 200);
        }
    }

    function musicUnderCategory_get() {
        $category = $this->get('category');

        $response = array();

        if ($category == 'all') {
            $this->db->select("*"); 
        } else {
            $this->db->select("*");
            $this->db->where(array('category' => $category));
        }

        $query = $this->db->get('music');


        if ($query->num_rows() > 0) {
            $outp = array();
            foreach ($query->result() as $row) {
                $outp['title'] = $row->title;
                $outp['musicfile'] = $row->musicfile;
                array_push($response, $outp);
            }
            $this->response(array('result' => $response));
        } else {
            $this->response(array("result" => false), 200);
        }
    }

}
