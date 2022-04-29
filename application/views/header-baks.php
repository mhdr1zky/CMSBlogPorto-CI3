<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="<?php echo base_url().'theme/css/bootstrap.min.css'?>"/>
    <link href="https://fonts.googleapis.com/css2?family=Rubik+Mono+One&display=swap" rel="stylesheet">
    <style type="text/css">
      /*add line*/
      h1:before,
     
   
      h1:after {
      left: 0.5em;
      margin-right: -50%;
      }
      .textheader{
        font-family: 'Rubik Mono One', sans-serif;
      }
      .imgheader{
        transform: rotate(-10deg);
        padding-right: 20%;
      }
      .header2{
        font-family: 'Rubik Mono One', sans-serif;
      }
    </style>
    <title><?php echo $site_title;?></title>
  </head>
  <body onLoad="doneload()">
    <style type="text/css">
    #overlay {
    position: fixed; /* Sit on top of the page content */
    display: block; /* Hidden by default */
    width: 100%; /* Full width (cover the whole page) */
    height: 100%; /* Full height (cover the whole page) */
    top: 0;
    left: 0;
    right: 0;
    bottom: 0;
    background-color: rgba(0,0,0,0.5); /* Black background with opacity */
    z-index: 2; /* Specify a stack order in case you're using a different order for other elements */
    cursor: pointer; /* Add a pointer on hover */
    }</style>
    <div id="overlay">
      <div class="d-flex justify-content-center">
        <div class="spinner-border loader" role="status">
          <span class="sr-only">Loading...</span>
        </div>
      </div>
    </div>
    <!-- Image and text -->
    <nav class="navbar navbar-expand-lg navbar-light bg-light">
      <a class="navbar-brand" href="#">
        <!--    <img src="<?php
        echo base_url().'theme/images/'.$logo;?>" width="30" height="30" class="d-inline-block align-top" alt=""> -->
      Mhd <span class="text-success">Rizky</a>
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav mr-auto">
          
          <!-- Multiple column menu example -->
          <?php
          $query = $this->db->get_where('tbl_navbar', array('navbar_parent_id' => 0));
          if($query->num_rows() > 0):
          ?>
          <?php foreach ($query->result() as $row):?>
          <?php
          $nav_id=$row->navbar_id;
          $query2 = $this->db->get_where('tbl_navbar', array('navbar_parent_id' => $nav_id));
          ?>
          <?php if($query2->num_rows() > 0):?>
          <!-- navbar with submenu -->
          <li class="nav-item nav-item dropdown">
            <a href="<?php echo site_url($row->navbar_slug);?>" class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><?php echo $row->navbar_name;?> <i class="fa fa-angle-down"></i></a>
            
            <div class="dropdown-menu" aria-labelledby="navbarDropdown">
              <!-- Sub -->
              <?php foreach ($query2->result() as $row2):?>
              
              <a href="<?php echo site_url($row2->navbar_slug);?>" class="dropdown-item"><?php echo $row2->navbar_name;?></a>
              
              <?php endforeach;?>
              <!-- End Sub -->
            </div>
            
          </li>
          <?php else:?>
          <li class="nav-item">
            <a href="<?php echo site_url($row->navbar_slug);?>" class="nav-link"><?php echo $row->navbar_name;?></a>
          </li>
          <?php endif;?>
          <?php endforeach;?>
          <?php else:?>
          <li>
            <a href="#">Belum ada menu</a>
          </li>
          <?php endif;?>
          
        </ul>
        <form class="form-inline my-2 my-lg-0">
          <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
          <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
        </form>
      </div>
    </nav>