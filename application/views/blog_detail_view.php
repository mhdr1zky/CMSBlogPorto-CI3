<!DOCTYPE html>
<html lang="en">
	<head>
		<!-- Page Title -->
		<title><?php echo $title;?></title>
		
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
		<link href="<?php echo base_url().'theme/css/jssocials.css'?>" rel="stylesheet">
		<link href="<?php echo base_url().'theme/css/jssocials-theme-flat.css'?>" rel="stylesheet">
		<link rel="stylesheet" href="<?php echo base_url().'assets/plugins/fontawesome/css/font-awesome.min.css'?>"/>
		<!-- SEO Tags -->
		<meta name="description" content="<?php echo $description;?>"/>
		<link rel="canonical" href="<?php echo site_url('blog/'.$slug);?>" />
		<meta property="og:locale" content="id_ID" />
		<meta property="og:type" content="article" />
		<meta property="og:title" content="<?php echo $title;?>" />
		<meta property="og:description" content="<?php echo $description;?>" />
		<meta property="og:url" content="<?php echo site_url('blog/'.$slug);?>" />
		<meta property="og:site_name" content="<?php echo $site_name;?>" />
		<meta property="article:publisher" content="<?php echo $site_facebook;?>" />
		<meta property="article:section" content="<?php echo $category;?>" />
		<meta property="og:image" content="<?php echo base_url().'assets/images/'.$image;?>" />
		<meta property="og:image:secure_url" content="<?php echo base_url().'assets/images/'.$image;?>" />
		<meta name="twitter:card" content="summary_large_image" />
		<meta name="twitter:description" content="<?php echo $description;?>" />
		<meta name="twitter:title" content="<?php echo $title;?>" />
		<meta name="twitter:site" content="<?php echo $site_twitter;?>" />
		<meta name="twitter:image" content="<?php echo base_url().'assets/images/'.$image;?>" />
		<!-- / End SEO Tags. -->
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
			<main class="cd-main-content mt-100">
				
				
				<!-- SECTION ABOUT
				================================================== 	-->
				<section class="page-section small-section">
					<div class="container col-md-11">
						
						<div class="row col">
							<div class="col-md-8 col-md-offset-2">
								<!-- SECTION BLOG ITEM
								================================================== -->
								<div class="blog-item clearfix">
									
									<!--POST TITLE-->
									<h2 class="heading5 mt-0 font-face1 fw700"><?php echo $title;?></h2>
									
									<!--POST META-->
									<div class="blog-item-meta font-face1">
										<span><a href="javascript:void(0)"><i class="fa fa-calendar-o"></i> <?php echo date('d M Y',strtotime($date));?></a></span>
										<span class="separator">&vert;</span>
										<span><a href="javascript:void(0)"><i class="fa fa-user"></i> <?php echo $author;?></a></span>
										<span class="separator">&vert;</span>
										<span><a href="<?php echo site_url('category/'.$category_slug);?>"><i class="fa fa-folder-open"></i> <?php echo $category;?></a></span>
										<span class="separator">&vert;</span>
										<span><a href="javascript:void(0)"><i class="fa fa-eye"></i> <?php echo number_format($views).' views';?></a></span>
										<span class="separator">&vert;</span>
										<span><a href="javascript:void(0)"><i class="fa fa-comments"></i> <?php echo number_format($comment);?> Comments</a></span>
									</div>
									
									
									<!--POST MEDIA-->
									<div class="blog-media">
										<img alt="" class="w-100" src="<?php echo base_url().'assets/images/'.$image;?>">
									</div>
									
									<!--POST BODY-->
									<div class="blog-item-body light-text clearfix">
										<?php echo $content;?>
									</div>
									
									<!--POST TAG-->
									<div class="post-meta-section clearfix">
										
										<div class="float-left font-face1 post-meta-holder nomargin">TAGS &mdash;
											<?php
											$split_tag=explode(",", $tags);
											foreach ($split_tag as $tag) :
											?>
											<a href="<?php echo site_url('tag/'.$tag);?>"><?php echo $tag;?></a> &vert;
											<?php endforeach;?>
										</div>
										<div class="float-right">
											<div class="SocialShareArticle" style="color: #fff;font-size: 10px;"></div>
										</div>
										
									</div>

									
									
									<div class="realeted-post">
										<?=$related_post;?>
									</div>
									


									<!--POST COMMENT-->
									<div class="container mb-5 mt-5 ">
									<div class="card">
										<div class="row">
											<div class="col-md-12 my-5 mx-5 px-5 py-1">
												<h3 class="text-center mb-5"><?php echo $comment;?> Comments</h3>
												<div class="row">
													<div class="col-md-12">
														<?php foreach ($show_comments->result() as $row):?>
														<div class="media"> 
															<img class="mr-3 rounded-circle" alt="Bootstrap Media Preview" src="<?php echo base_url().'assets/images/'.$row->comment_image;?>" />
															<div class="media-body">

																<div class="row">
																	<div class="col-8 d-flex">
																		<h5><?php echo $row->comment_name;?></h5> <span>- <?php echo date('d M Y',strtotime($row->comment_date));?></span>
																	</div>
																	<div class="col-3">
																		<div class="pull-right reply"> <a href="#"><span><i class="fa fa-reply"></i> reply</span></a> </div>
																	</div>
																	</div> 
																	<?php echo $row->comment_message;?><div class="media mt-4"> <a class="pr-3" href="#"><img class="rounded-circle" alt="Bootstrap Media Another Preview" src="http://localhost/myblog/assets/images/fcee14ca639c3ca3c5b93b7c7fc70ba2.png" /></a>
																		<!-- Comment children second level -->
												<?php
													$comment_id=$row->comment_id;
													$query = $this->db->query("SELECT * FROM tbl_comment WHERE comment_status='1' AND comment_parent='$comment_id'");
													foreach ($query->result() as $i) :
												?>
																	<div class="media-body">
																		<div class="row">
																			<div class="col-12 d-flex">
																				<h5><?php echo $i->comment_name;?></h5> <span>- <?php echo date('d M Y',strtotime($row->comment_date));?></span>
																			</div>
																		</div> <?php echo $i->comment_message;?>
																	</div>
																</div>
																<div class="media mt-3"> <a class="pr-3" href="#"><img class="rounded-circle" alt="Bootstrap Media Another Preview" src="http://localhost/myblog/assets/images/fcee14ca639c3ca3c5b93b7c7fc70ba2.png" /></a>
																<div class="media-body">
																	<div class="row">
																		<div class="col-12 d-flex">
																			<h5>John Smith</h5> <span>- 4 hours ago</span>
																		</div>
																	</div> the majority have suffered alteration in some form, by injected humour, or randomised words.
																</div>
															</div>
														</div>
														<?php endforeach;?>
													</div>
													<?php endforeach;?>
													
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
									<!-- End Comment First level -->
									
									<!--POST LEAVE COMMENT-->
									<div class="comments-heading text-center mb-30">
										<hgroup>
										<h2 class="font-face1 section-heading">Leave a comment</h2>
										</hgroup>
									</div>
									<?php echo $this->session->flashdata('msg');?>
									<form method="post" action="<?php echo site_url('send_comment');?>" role="form" class="form">
										<div class="row">
											<input type="hidden" name="post_id" value="<?php echo $post_id;?>" required>
											<input type="hidden" name="slug" value="<?php echo $slug;?>" required>
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
													<textarea name="comment" class="form-control" rows="6" placeholder="Comment *" maxlength="400" required></textarea>
												</div>
											</div>
											<div class="col-md-12 center-xs">
												<button type="submit" class="btn bg-primary text-white">
												Submit comment
												</button>
											</div>
										</div>
									</form>
									<!--END POST LEAVE COMMENT-->
									
								</div>
								
							</div>



							<div class="blog-sidebar text-center col-md-4">
								
								<div class="popular-widget">
									<h2>POPULAR POSTS</h2>
									<hr>
									<?php foreach ($populer_post->result() as $row) : ?>
									
									<div class="float-right">
										<span class="text-xs"><i class="fa fa-eye"></i><?php echo $row->post_views; ?></span>
									</div>

									   <div class="card-wrap text-center">
									   	<div class="card-body">
											<a class="lp-0 mt-0 font-face1" href="<?php echo site_url('blog/' . $row->post_slug); ?>"><?php echo $row->post_title; ?></a>
										
										<div class="card-image">
											<a href=""><img  class="card-img rounded " src="<?php echo base_url().'assets/images/thumb/'.$row->post_image?>" alt="thumnail"></a>
										</div></div>
										
									</div>
									
									<?php endforeach; ?>
									
							
							</div>

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
														<input type="hidden" name="url" value="<?php echo site_url('blog/'.$slug);?>" required>
														<input type="email" name="email" required placeholder="Your Email..." class="form-control">
														<button type="submit" class="btn btn-subscribe">Subscribe</button>
													</div>
												</form>
											</div>
										</div>
										<div><?php echo $this->session->flashdata('message');?></div>
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
				<script>
				$(document).ready(function(){
					$(".SocialShareArticle").jsSocials({
				showCount: false,
				showLabel: true,
				shareIn: "popup",
				shares: [
				{ share: "twitter", label: "Twitter" },
				{ share: "facebook", label: "Facebook" },
				{ share: "whatsapp", label: "WhatsApp" },
				{ share: "linkedin", label: "Linked In" }
				]
				});
				});
				</script>
			</body>
		</html>