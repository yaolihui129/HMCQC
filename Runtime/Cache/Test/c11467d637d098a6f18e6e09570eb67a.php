<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html>
<html lang="zh-cn">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>太平洋加达测试平台</title>
	<metaname="screen-orientation"content="portrait">
	<metaname="x5-orientation"content="portrait">
    <link href="http://cdn.bootcss.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="/Xiuli/Public/css/home.css" />    
    <!--[if lt IE 9]>
      <script src="http://cdn.bootcss.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="http://cdn.bootcss.com/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
  </head>
  <body>
    <nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
      <div class="container">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand" href="/Xiuli/index.php/Test/Index/index">加达测试管理平台</a>
        </div>
        <div id="navbar" class="collapse navbar-collapse">
          <ul class="nav navbar-nav pull-right" >          
            <li><a href="/Xiuli/index.php/Test/Task/index"><span class="glyphicon glyphicon-time"> 工时</span></a></li>           
            <li class="dropdown">
               <a href="#" class="dropdown-toggle" data-toggle="dropdown">
               <span class="glyphicon glyphicon-search"> 测试<span class="caret"></span></a>
               <ul class="dropdown-menu" role="menu">                                
                 <li><a href="/Xiuli/index.php/Test/Program/index/testgp/PJD">PJD</a></li>                
               </ul>
           </li>
			<!-- <li><a href="/Xiuli/index.php/Test/About/index"></span> 关于我们</a></li> -->             
          </ul>
        </div>
      </div>
    </nav>
    <div class="container">

      
<div class="row">
<h3 >近期上线项目</h3> 
  <div class="col-md-9">  
     <div class="starter-template">             
        <div class="panel-group" id="accordion" role="tablist" aria-multiselectable="true">               
         	<?php if(is_array($data)): $i = 0; $__LIST__ = $data;if( count($__LIST__)==0 ) : echo "没有数据" ;else: foreach($__LIST__ as $key=>$pro): $mod = ($i % 2 );++$i;?><div class="panel panel-default">
				<div class="panel-heading" role="tab" id="heading<?php echo ($pro["id"]); ?>">
				<h4 class="panel-title">
					<a data-toggle="collapse" data-parent="#accordion" href="#<?php echo ($pro["id"]); ?>" aria-expanded="true" aria-controls="<?php echo ($pro["id"]); ?>">
					<?php echo ($pro["code"]); ?>:<?php echo ($pro["name"]); ?>(<?php echo ($pro["end"]); ?>上线)<span class="badge"><?php echo (getProst($pro["status"])); ?></span></a>						
					<div class="btn-group pull-right">
					    <a href="/Xiuli/index.php/Test/Func/range/proid/<?php echo ($pro["id"]); ?>"  class="btn btn-warning btn-xs ">范围 
					    <span class="badge"><?php echo (countRange($pro["id"])); ?></span> </a>
					    <button type="button" class="btn btn-warning btn-xs dropdown-toggle" data-toggle="dropdown">
					       <span class="caret"></span>
					       <span class="sr-only">Toggle Dropdown</span>
					    </button>
					    <ul class="dropdown-menu" role="menu">
					       <li><a href="/Xiuli/index.php/Test/Risk/index/proid/<?php echo ($pro["id"]); ?>">风险 
					       <span class="badge"><?php echo (countRisk($pro["id"])); ?></span> </a></li>
					       <li><a href="/Xiuli/index.php/Test/Stage/index/proid/<?php echo ($pro["id"]); ?> ">里程碑 
					       <span class="badge "><?php echo (countStage($pro["id"])); ?></span> </a></li>
					       <li><a href="/Xiuli/index.php/Test/Scene/index/proid/<?php echo ($pro["id"]); ?>">场景 
					       <span class="badge "><?php echo (countScene($pro["id"])); ?><span></a></li>
					       <li><a href="/Xiuli/index.php/Test/Func/func/proid/<?php echo ($pro["id"]); ?>">功能点
						   <span class="badge"><?php echo (countProFunc($arr["id"])); ?></span></a></li>					                				                
					       <li><a href="/Xiuli/index.php/Test/Case/procase/proid/<?php echo ($pro["id"]); ?>">用例
					       <span class="badge "><?php echo (countCase($pro["id"])); ?></span></a></li>				                					                
					    </ul>
					  </div>					      
				 </h4>
				 </div>
					<div id="<?php echo ($pro["id"]); ?>" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading<?php echo ($pro["id"]); ?>">
					    <div class="panel-body">
						    <b> 产品：</b><?php echo (getRealname($pro["po"])); ?>
						    <b> 项目经理：</b><?php echo (getRealname($pro["pm"])); ?>
						    <b> 研发：</b><?php echo (getRealname($pro["rd"])); ?>
						    <b> 测试：</b><?php echo (getRealname($pro["qd"])); ?><br>
					        <div class="well well-sm"><b>简介：</b><?php echo ($pro["desc"]); ?></div>
					    </div>
					</div>
  			</div><?php endforeach; endif; else: echo "没有数据" ;endif; ?>
        </div>
     </div>
     
		<div id="ckepop">
		<span class="jiathis_txt">分享到：</span>
		<a class="jiathis_button_qzone">QQ空间</a>
		<a href="http://www.jiathis.com/share" class="jiathis jiathis_txt jiathis_separator jtico jtico_jiathis" target="_blank">更多</a>
		<a class="jiathis_counter_style"></a>
		</div>
		<script type="text/javascript" src="http://v2.jiathis.com/code/jia.js" charset="utf-8"></script>
  </div>
  <div class="col-md-3">
  	<div id="carousel-example-generic" class="carousel slide" data-ride="carousel" >
		<ol class="carousel-indicators">
		    <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
		    <li data-target="#carousel-example-generic" data-slide-to="1"></li>
		    <li data-target="#carousel-example-generic" data-slide-to="2"></li>
		</ol>		
		<div class="carousel-inner" role="listbox">
		    <div class="item active">
		      <img src="/Xiuli/Public/images/Test/qc.jpg" alt="/Xiuli/Public/images/Test/qc.jpg" >
		      <div class="carousel-caption"></div>
		    </div>
		    <div class="item">
		      <img src="/Xiuli/Public/images/Test/gupeng.png" alt="/Xiuli/Public/images/Test/gupeng.png" >
		      <div class="carousel-caption"></div>		      
		    </div>
		    <div class="item">
		      <img src="/Xiuli/Public/images/Test/yaolh.png" alt="/Xiuli/Public/images/Test/yaolh.png">
		      <div class="carousel-caption"></div>		      
		    </div>
		</div>
		  <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
		    <span class="glyphicon glyphicon-chevron-left"></span>
		    <span class="sr-only">Previous</span>
		  </a>
		  <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
		    <span class="glyphicon glyphicon-chevron-right"></span>
		    <span class="sr-only">Next</span>
		  </a>
		</div>     
    </div>           
</div>
      <div class="foot navbar-bottom list-inline text-center">
         	Copyright <span class="num">&copy;</span> 2016-2017
     		<a target="_blank" href="#"><b>yaolh</b></a> 版权所有</div>
    	</div>      
      </div>
  
    <!--<script type="text/javascript" src="/Xiuli/Public/js/jquery.js"></script>-->
    <script src="http://cdn.bootcss.com/jquery/1.11.1/jquery.min.js"></script>
    <!--<script type="text/javascript" src="/Xiuli/Public/js/bootstrap.js"></script>-->
    <script src="http://cdn.bootcss.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
 </body>
</html>