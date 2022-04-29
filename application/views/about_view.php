<!DOCTYPE html>
<html lang="en">
	<head>
		<!-- Page Title -->
		<title>About</title>
		
		<!-- Page header -->
		<meta charset="utf-8"/>
		<meta name="description" content=""/>
		<meta name="keywords" content=""/>
		<meta name="author" content=""/>
		<!--[if IE]><meta http-equiv='X-UA-Compatible' content='IE=edge,chrome=1'><![endif]-->
		<meta name="viewport" content="width=device-width"/>
		<!-- CSS -->
		<link rel="stylesheet" href="<?php echo base_url('theme/css/bootstrap.min.css')?>"/>
		<link rel="stylesheet" href="<?php 
		// echo base_url('theme/css/style.css')?>"/>
		<link rel="stylesheet" href="<?php echo base_url('theme/css/padding-margin.css')?>"/>
		<!-- Favicons -->
		<link rel="shortcut icon" href="<?php echo base_url('theme/images/'.$icon);?>">
		
		<link href="https://fonts.googleapis.com/css2?family=Rubik+Mono+One&display=swap" rel="stylesheet">
		<style type="text/css">
			/*add line*/
			h1:before,
			h1:after {
			background-color: #000;
			content: "";
			display: inline-block;
			height: 10px;
			position: relative;
			vertical-align: middle;
			width: 50%;
			}
			/*set posisition text*/
			h1:before {
			right: 0.5em;
			margin-left: -50%;
			}
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
			ul.plus li {
				list-style-type: none;
			}
			ul.plus li:before {    
				list-style-type: none;
				    font-family: 'FontAwesome';
				    content: '\f067';
				    margin:0 5px 0 -15px;
				    color: seagreen;
				}
			hr.linewidget{
				border-top: 1px solid green;
				border-width: 3px;
			}



.navbar-brand {
   transform: translateX(-50%);
  left: 50%;
  position: relative;
  width: 4.5em;
  height: 0;
}
.navbar-brand .wrapper {
  position: absolute;
  top:0;
  left:0;
  right: 0;
  width: 100%;
  height: 0;
  padding-bottom: 100%;
  border-radius: 100%;
}
.navbar-brand img {
width: 100%;
position: absolute;
top: 0;
left: 0;
right: 0;
}
.image{
  transform: rotate(-10deg);
}
.image:hover {
    position: absolute;

    -webkit-animation:spin 4s linear infinite;
    -moz-animation:spin 4s linear infinite;
    animation:spin 4s linear infinite;
}
@-moz-keyframes spin { 
    100% { -moz-transform: rotate(360deg); } 
}
@-webkit-keyframes spin { 
    100% { -webkit-transform: rotate(360deg); } 
}
@keyframes spin { 
    100% { 
        -webkit-transform: rotate(360deg); 
        transform:rotate(360deg); 
    } 

}
</style>
	</head>
	<body class="content-animate">
		<!-- PRELOADER
		==================================================-->
		<div class="page-loader">
			<div class="loader-area"></div>
			<div class="loader font-face1">loading...
			</div>
		</div>
		
		<!-- PAGE
		==================================================-->
		<div id="top" class="page">
			
			<!-- Navigation panel
			================================================== -->
			
<link rel="stylesheet" href="<?php echo base_url().'assets/plugins/fontawesome/css/font-awesome.min.css'?>"/>    
      <nav class="navbar navbar-expand-lg navbar-light bg-light">
        <a class="navbar-brand" href="<?=site_url()?>">
        <div class="wrapper bg-dark ">
            <img src="<?php 
            echo base_url().'theme/images/'.$logo;?>" class="image" alt="" >
           </div></a>
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
			<!-- End Navigation panel -->
			
			<!-- Main Content
			==================================================-->
			<main role="main" class="container">
				<div class="row">
					<div class="col-md-12 blog-main">
						<!-- SECTION ABOUT
						================================================== 	-->
						<br>
						<br>
						<section class="mt-30">
							<div class="px-4 pt-2 mt-2 text-center ">
								<h1 class="display-1 fw-bold textheader">ABOUT<span class="text-success">ME</h1><p class="lead mb-4">ALLOW ME TO INTRODUCE MYSELF.</p>
							</div>
							
							<div class="row onecontent">
								<div class="container">
									<div class="col-md-4">
										<!-- SECTION BLOG ITEM
										================================================== -->
										<div class="blog-item clearfix">
											
											<img class="imgheader w-100 h-100"  src="<?php echo base_url().'theme/images/'.$about_img;?>">
											
										</div>
										
									</div>
									<div class="col-md-9">
										<!-- SECTION BLOG ITEM
										================================================== -->
										<div class="blog-item clearfix">
											<?
											// =$about_desc;?>
											<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Amet est suscipit molestias esse modi. Perspiciatis explicabo sit ea mollitia dolores excepturi necessitatibus maxime pariatur dolore dolorem quia cumque facilis porro animi sequi est alias rem ut temporibus, suscipit odit assumenda saepe? Debitis ex quia, earum vel dicta atque perspiciatis dolorem consectetur a aspernatur .</p><br>
											<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Voluptatibus, itaque nostrum debitis libero repellendus perferendis quas, repellat, est ipsum, aut consequuntur accusantium quidem. Ea aliquid labore tempora doloremque hic ullam.</p>
											<p>Lorem ipsum, dolor, sit amet consectetur adipisicing elit. Eos, ipsum. Quod accusamus error eveniet repellat dolorem illo laudantium sunt, aliquam consequuntur repellendus distinctio cum obcaecati quidem beatae maxime suscipit, libero. Eligendi repellat, cum, officia commodi reiciendis modi non voluptatibus voluptatem minima? Minus odit, delectus ullam laboriosam officia, iusto velit quae. Porro quaerat velit dicta veniam sed. Id laboriosam iure nulla recusandae deleniti, sint enim, quam suscipit quisquam, Repudiandae quos voluptate labore ea fugit eaque optio, accusantium corporis doloremque soluta eveniet eum distinctio voluptatem veniam, illum quas reprehenderit vitae voluptatum sunt consequuntur enim pariatur voluptatibus beatae eos. Consequuntur quas ducimus, nulla omnis, ad, expedita reiciendis eos aut sunt exercitationem libero consequatur dolorum. Quis qui, delectus officia deserunt illo! Tempore neque porro, in tempora quibusdam tenetur beatae dolorum quisquam quod numquam. Consequatur, mollitia tempore asperiores sit necessitatibus reprehenderit illum hic non aperiam velit, praesentium natus, modi animi nostrum eligendi exercitationem.</p>
										</div>
										
									</div>
								</div>
							</div>
							<div class="row onecontent mt-50">
								<div class="col-md-4 text-center">
									This is i'am
								</div>
								<div class="col-md-9 text-center">
								</div>
								<!-- --- -->
							</div>
						</section>
						
						<!-- SECTION SUBSCRIBE
						================================================== -->
						<section  class="page">
							<div class="container">
								<div class="col-md-6 text-left">
									<h2 class="header2">CONTACT SOCIAL</h2>
									<hr class="linewidget">
									<div class="container">
										<div class="col">
									<i class="fa fa-twitter fa-3x"></i>
									 <h4 style="margin-top: 0.25em;">Twitter</h4></div>
									 <div class="col">
								<i class="fa fa-github fa-3x"></i>
									 <h4 style="margin-top: 0.25em;">Github</h4></div>
									 <div class="col">
									<i class="fa fa-linkedin fa-3x"></i>
									 <h4 style="margin-top: 0.25em;">LinkedIn</h4></div>
									 <div class="col">
									<i class="fa fa-whatsapp fa-3x"></i>
									 <h4 style="margin-top: 0.25em;">WhatApp</h4></div>

									 </div>
								
								</div>
								
								<div class="col-md-8 lookcando">
									<h2 class="header2">LOOK WHAT CAN I DO</h2>
										<hr class="linewidget">
									<ol style="color: rgb(51, 51, 51); font-family: &quot;Roboto Slab&quot;, serif; font-size: 19.2px;">
										<li><p>Membangun Aplikasi Web dengan Framework&nbsp;<span style="font-weight: bolder;">Laravel</span></p>
										<ul class="plus">
											<li>Dengan metode Test-Driven Development</li>
											<li>Format laporan dan dashboard sesuai kebutuhan</li>
											<li>Background processing dan notifikasi web realtime</li>
										</ul>
									</li>
									<li><p>Membangun website dengan Platform&nbsp;<span style="font-weight: bolder;">Wordpress</span></p>
								<ul class="plus">
										<li>Membuat Custom Theme Responsive untuk Wordpress</li>
										<li>Konversi Template HTML menjadi Theme Wordpress</li>
										<li>Custom Theme Wordpress dengan Child Theme</li>
										<li>Membuat Plugin Wordpress sesuai kebutuhan website yang sedang dikerjakan</li>
										<li>Membuat Custom Theme Prenium untuk Wordpress</li>
									</ul>
								</li>
								<li><p>Saya juga mengembangkan beberapa project dan library/package&nbsp;<span id="open-source-projects">open-source</span>:</p>
								<ul class="plus">
									<li><a href="https://github.com/nafiesl/free-pmo" style="color: rgb(102, 102, 102);"><span style="font-weight: bolder;">Free PMO</span></a>, sebuah aplikasi web untuk manajemen project untuk freelance dan agensi.</li>
									<li><a href="https://github.com/nafiesl/silsilah" style="color: rgb(102, 102, 102);"><span style="font-weight: bolder;">Silsilah</span></a>, sebuah aplikasi silsilah keluarga berbasis web.</li>
									<li><a href="https://github.com/nafiesl/grosir-obat" style="color: rgb(102, 102, 102);"><span style="font-weight: bolder;">Grosir Obat</span></a>, sebuah aplikasi web sederhana untuk kasir.</li>
									<li><a href="https://github.com/nafiesl/dompet" style="color: rgb(102, 102, 102);"><span style="font-weight: bolder;">Dompet</span></a>, sebuah aplikasi web untuk input pemasukan dan pengeluaran pribadi.</li>
									<li><a href="https://github.com/nafiesl/SimpleCrudGenerator" style="color: rgb(102, 102, 102);"><span style="font-weight: bolder;">SimpleCrudGenerator</span></a>, sebuah library/package code generator untuk membuat sebuah fitur CRUD pada Framework Laravel, lengkap dengan unit testnya.</li>
									<li><a href="https://github.com/nafiesl/FormField" style="color: rgb(102, 102, 102);"><span style="font-weight: bolder;">FormField</span></a>, sebuah library/package untuk mempermudah pembuatan Form di project Laravel.</li>
								</ul>
							</li>
						</ol>
					</div>
				</div>
			</div>
			
		</section>
		
		<hr class="nomargin nopadding"/>
		
		<!-- FOOTER
		================================================== -->
		<?php echo $footer;?>
		
	</main>
	
</div>
<!-- Modal Search-->
<div class="modal fade" id="ModalSearch" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" style="z-index: 10000;">
	<div class="modal-dialog" role="document">
		<div class="modal-content">
			<div class="modal-body">
				<form action="<?php echo site_url('search');?>" method="GET">
					<div class="input-group">
						<input type="text" name="search_query" class="form-control input-search" style="height: 40px;" placeholder="Search..." required>
						<span class="input-group-btn">
							<button class="btn btn-default" type="submit" style="height: 40px;background-color: #ccc;"><span class="fa fa-search"></span></button>
						</span>
					</div>
				</form>
			</div>
		</div>
	</div>
</div>
<!-- JAVASCRIPT
==================================================-->
<script src="<?php echo base_url('theme/js/jquery-2.2.4.min.js')?>"></script>
<script src="<?php echo base_url('theme/js/jquery.easing.min.js')?>"></script>
<script src="<?php echo base_url('theme/js/bootstrap.min.js')?>"></script>
<script src="<?php echo base_url('theme/js/waypoints.min.js')?>"></script>
<script src="<?php echo base_url('theme/js/jquery.scrollTo.min.js')?>"></script>
<script src="<?php echo base_url('theme/js/jquery.localScroll.min.js')?>"></script>
<script src="<?php echo base_url('theme/js/jquery.viewport.min.js')?>"></script>
<script src="<?php echo base_url('theme/js/jquery.sticky.js')?>"></script>
<script src="<?php echo base_url('theme/js/jquery.fitvids.js')?>"></script>
<script src="<?php echo base_url('theme/js/jquery.parallax-1.1.3.js')?>"></script>
<script src="<?php echo base_url('theme/js/isotope.pkgd.min.js')?>"></script>
<script src="<?php echo base_url('theme/js/imagesloaded.pkgd.min.js')?>"></script>
<script src="<?php echo base_url('theme/js/masonry.pkgd.min.js')?>"></script>
<script src="<?php echo base_url('theme/js/jquery.magnific-popup.min.js')?>"></script>
<script src="<?php echo base_url('theme/js/jquery.counterup.min.js')?>"></script>
<script src="<?php echo base_url('theme/js/slick.min.js')?>"></script>
<script src="<?php echo base_url('theme/js/wow.min.js')?>"></script>
<script src="<?php echo base_url('theme/js/script.js')?>"></script>
<script src="<?php echo base_url('theme/js/jssocials.min.js')?>"></script>
</body>
</html>