
<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css" rel="stylesheet">
<div class="container pt-30">

<div class="row">
	<?php
	// var_dump($related_post->result());
	 foreach ($related_post->result() as $row):?>
  <div class="col-xs-12 col-sm-4">
    <div class="be-post style-2">
      <div class="be-post-date"><i class="fa fa-clock-o"></i> <?php echo date('d M Y',strtotime($row->post_date));?></div>
      <a href="<?php echo site_url('blog/'.$row->post_slug);?>" class="be-post-title"><?php echo $row->post_title;?></a>       
      <a href="<?php echo site_url('blog/'.$row->post_slug);?>" class="be-img-block">
        <img src="<?php echo base_url().'assets/images/thumb/'.$row->post_image?>" alt="omg">
      </a>
      <span>
       <?php echo $row->post_tags;?> 
      </span><span class="float-right"><i class="fa fa-eye"></i> <?=$row->post_views;?></span>
    </div>              
  </div>
  <?php endforeach;?>                            
</div>
</div>