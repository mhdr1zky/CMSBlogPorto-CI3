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
		<link rel="stylesheet" href="<?php echo base_url('theme/css/style.css')?>"/>
		<link rel="stylesheet" href="<?php echo base_url('theme/css/padding-margin.css')?>"/>
		<!-- Favicons -->
		<link rel="shortcut icon" href="<?php echo base_url('theme/images/'.$icon);?>">
		<link rel="stylesheet" href="<?php echo base_url().'theme/css/font-awesome.min.css'?>"/>
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
			<?php echo $header;?>
			<!-- End Navigation panel -->
			
			<!-- Main Content
			==================================================-->
			<main class="main">
				
				<!-- SECTION ABOUT
				================================================== 	-->
				<div class="px-4 pt-2 mt-2 text-center ">
					<hr><h1 class="display-1 fw-bold textheader">ABOUT<span class="text-success">ME</h1><p class="lead mb-4">ALLOW ME TO INTRODUCE MYSELF.</p>
				</div>
				<section>
				<div class="row">
					<div class="container">
						<div class="col-md-3 col-md-offset-1">
							<!-- SECTION BLOG ITEM
							================================================== -->
							<div class="blog-item clearfix">
								
								<img class="imgheader" src="<?php echo base_url().'theme/images/'.$about_img;?>">
								
							</div>
							
						</div>
						<div class="col-md-6">
							<!-- SECTION BLOG ITEM
							================================================== -->
							<div class="blog-item clearfix">
								<?
								// =$about_desc;?>
								<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Amet est suscipit molestias esse modi. Perspiciatis explicabo sit ea mollitia dolores excepturi necessitatibus maxime pariatur dolore dolorem quia cumque facilis porro animi sequi est alias rem ut temporibus, suscipit odit assumenda saepe? Debitis ex quia, earum vel dicta atque perspiciatis dolorem consectetur a aspernatur .</p><br>
								<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Voluptatibus, itaque nostrum debitis libero repellendus perferendis quas, repellat, est ipsum, aut consequuntur accusantium quidem. Ea aliquid labore tempora doloremque hic ullam.</p>
							</div>
							
						</div>
					</div>
				</div>
				
			</div>
		</section>
		
		<!-- SECTION SUBSCRIBE
		================================================== -->
		<section  class="page-section">

			<div class="container">
				<div class="row">
					<h2 class="header2">THINGS I LOVE</h2>
					<hr>
					<div class="col-sm-6">
						<p>facebook</p>
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