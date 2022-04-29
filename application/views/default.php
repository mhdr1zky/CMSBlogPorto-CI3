<!DOCTYPE html>
<html lang="en">
	<head>

		<!-- Page Title -->
		<title><?php echo $site_title;?></title>
		
		<!-- Page header -->
		<meta charset="utf-8"/>	
		<meta name="description" content=""/>
		<meta name="keywords" content=""/>
		<meta name="author" content=""/>
		<!--[if IE]><meta http-equiv='X-UA-Compatible' content='IE=edge,chrome=1'><![endif]-->
		<meta name="viewport" content="width=device-width"/>
		<!-- CSS -->
		<link rel="stylesheet" href="<?php echo base_url('theme/css/bootstrap.min.css')?>"/>
		<link rel="stylesheet" href="<?php echo base_url().'theme/css/font-awesome.min.css'?>"/>
		<!-- Favicons -->		
		<link rel="shortcut icon" href="<?php echo base_url('theme/images/'.$icon);?>">
		
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
		
			<main class="container text-center">
				<section>
					<div class="row">
					<div class="left col-md-6">
						left text
					</div>
					<div class="right col-md-6">
						right text
					</div>
					</div>
					<div class="row">
						<div class="col">
						text center
						</div>
					</div>
				</section>
			  <?php echo $footer;?>
			

			</main>
		</body>
		<script src="<?php echo base_url().'theme/js/jquery-3.2.1.slim.min.js'?>"></script>
		 <script src="<?php echo base_url().'theme/js/popper.min.js'?>"></script>
		  <script src="<?php echo base_url().'theme/js/bootstrap.min.js'?>"></script>