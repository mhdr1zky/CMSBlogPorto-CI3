<!DOCTYPE html>
<html lang="en">
	<head>

		<!-- Page Title -->
	<title>Contact</title>
		
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
	<body class="">
		<!-- PRELOADER
		==================================================-->	
	
		
		<!-- PAGE class for trigger to top
		==================================================-->	
		<div id="top" class="page">
			
			<!-- Navigation panel
			================================================== -->		
			<?php echo $header;?>
				<!-- End Navigation panel -->
		
			<!-- Main Content
			==================================================-->		
		
			<main class="container text-center col">
				<section>
		
					<div class="row ">
						<div class="col-lg-9 px-10 text-center">
							<div class="comments-heading text-center mb-30">
										<hgroup>
											<h2 class="font-face1 section-heading">Contact</h2>
										</hgroup>									
							</div>
									<?php echo $this->session->flashdata('msg');?>
									<form method="post" action="<?php echo site_url('contact/send');?>" role="form" class="form">
										<div class="row">
											<div class="col-md-6">
												<div class="form-group">
													 <input type="text" name="name" class="form-control" placeholder="Name *" maxlength="100" required="">										
												</div>
											</div>
											<div class="col-md-6">
												<div class="form-group">
													<input type="email" name="email" class="form-control" placeholder="Email *" maxlength="100" required="">									
												</div>
											</div>
											<div class="col-md-12">
												<div class="form-group">
													<input type="text" name="subject" class="form-control" placeholder="Subject *" maxlength="100" required="">									
												</div>
											</div>
											<div class="col-md-12">
												<div class="form-group">
													<textarea name="message" class="form-control" rows="6" placeholder="Comment *" maxlength="400" required></textarea>										
												</div>
											</div>
											<div class="col-md-12 center-xs">
												<button type="submit" class="btn bg-black white-color">
													Submit
												</button>
											</div>	
										</div>		
									</form>
						</div>

					</div>
				</section>

				  <?php echo $footer;?>
			</main>
		</body>
		<script src="<?php echo base_url().'theme/js/jquery-3.2.1.slim.min.js'?>"></script>
		 <script src="<?php echo base_url().'theme/js/popper.min.js'?>"></script>
		  <script src="<?php echo base_url().'theme/js/bootstrap.min.js'?>"></script>
			
	