<!doctype html>
<html lang="en">
  <head> 
    <!-- Page header -->
    <meta charset="utf-8"/> 
    <meta name="description" content=""/>
    <meta name="keywords" content=""/>
    <meta name="author" content=""/>
    <!--[if IE]><meta http-equiv='X-UA-Compatible' content='IE=edge,chrome=1'><![endif]-->
    <meta name="viewport" content="width=device-width"/>
    <!-- CSS -->
    <!-- Favicons -->   
    <link rel="shortcut icon" href="<?php echo base_url('theme/images/'.$icon);?>">
    <!-- SEO Tag -->
      <meta name="description" content="<?php echo $site_desc;?>"/>
      <link rel="canonical" href="<?php echo site_url();?>" />
      <meta property="og:locale" content="id_ID" />
      <meta property="og:type" content="website" />
      <meta property="og:title" content="<?php echo $site_title;?>" />
      <meta property="og:description" content="<?php echo $site_desc;?>" />
      <meta property="og:url" content="<?php echo site_url();?>" />
      <meta property="og:site_name" content="<?php echo $site_name;?>" />
      <meta property="og:image" content="<?php echo base_url().'theme/images/'.$site_image?>" />
      <meta property="og:image:secure_url" content="<?php echo base_url().'theme/images/'.$site_image?>" />
      <meta property="og:image:width" content="560" />
      <meta property="og:image:height" content="315" />
      <meta name="twitter:card" content="summary" />
      <meta name="twitter:description" content="<?php echo $site_desc;?>" />
      <meta name="twitter:title" content="<?php echo $site_title;?>" />
      <meta name="twitter:site" content="<?php echo $site_twitter;?>" />
      <meta name="twitter:image" content="<?php echo base_url().'theme/images/'.$site_image?>" />
      
    <!-- End SEO Tag. -->
    <!-- Required meta tags -->
    <meta charset="utf-8">
  
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
    display: none; /* Hidden by default */
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
    <main>

      </section>

      <!-- SECTION TESTI -->

      <!-- END SECTION TESTI -->

<!-- SECTION BLOG
        ================================================== -->
        <section id="thoughts" class="page-section big-section py-2">  
          <h1 class="display-1 fw-bold textheader text-center">MY<span class="text-success">PROJECTS</h1> 
          <div class="container">
            <div class="row ">                           
              <div class="col col-md-offset-3 mb-10 mb-sm-40 text-center">
                 <div><?php echo $this->session->flashdata('message');?></div>    
                <hr>
                <h2 class="font-face1 section-heading fw800 mt-0 text-center textheader2">LATEST POSTS</h2>
              </div>              
            </div>  
            <div class="row multi-columns-row">
              <?php foreach($data->result() as $row):?>
              <div class="col-sm-6 col-md-4 col-lg-3 mb-md-50 mt-10 wow fadeIn">
                <article>
                  <a class="articles-card" href="<?php echo site_url('blog/'.$row->post_slug);?>" title="">
                    <div class="card-wrap">
                      <div class="card-image">
                        <img class="card-img-top" src="<?php echo base_url().'assets/images/thumb/'.$row->post_image?>" alt="Card image cap">   
                      </div>
                      <div class="card-body text-right">
                        <a href="<?php echo site_url('blog/'.$row->post_slug);?>" class="harticle lp-0 mt-0 font-face1 text-right" ><?php echo $row->post_title;?></a>
                      </div>
                      <div class="card-footer">
                        <div class="article_author">
                          <div class="portrait" data-background="<?php echo base_url().'assets/images/'.$row->user_photo;?>"></div>
                          <div class="author light-text"><?php echo $row->user_name;?></div>
                          <div class="date"><?php echo date('d M Y',strtotime($row->post_date));?></div>
                        </div>                        
                      </div>
                    </div>
                  </a>
                  <div class="like light-text"><a href="javascript:void(0)"></a> <?php echo $row->post_views;?> views</div>
                </article>
              </div>

              <?php endforeach;?>
              			
            </div>  

<section class="container text-center col">
		<?php echo $page;?>	
</section>
        </section>
        <!-- SECTION SUBSCRIBE
        ================================================== -->
        <section  class="page-section subscribe-section small-section">
          <div class="container">
            <div class="row">
              <div class="col-md-10 col-md-offset-1"> 
                <div class="form-subscribe mb-50 mb-sm-0">
                  <div class="col-sm-6 mb-sm-40">
                    <h2 class="heading5 mt-0 font-face1 white-color fw700 mb-0" >Newsletter.</h2>
                  </div>
                  <div class="col-sm-6">                    
                    <form class="form-inline" action="<?php echo site_url('subscribe');?>" method="post">
                      <div class="form-group">
                        <input type="hidden" name="url" value="<?php echo site_url();?>" required>
                        <input type="email" name="email" required placeholder="Your Email..." class="form-control">
                        <button type="submit" class="btn btn-subscribe">Subscribe</button>
                      </div>
                    </form>                   
                  </div>
                </div>
                            
              </div>
            </div>
          </div>
        </section>
        
        <!-- FOOTER
        ================================================== -->  
        <?php echo $footer;?>

    </main>
    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="<?php echo base_url().'theme/js/jquery-3.2.1.slim.min.js'?>"></script>
    <script src="<?php echo base_url().'theme/js/popper.min.js'?>"></script>
    <script src="<?php echo base_url().'theme/js/bootstrap.min.js'?>"></script>
  </body>
  <script>
  function doneload() {
  document.getElementById("overlay").style.display = "none";
  }
  </script>
</html>