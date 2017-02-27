<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html>
<html lang="zh-cn">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title><?php echo ($_SESSION['Xiuli']['web']); ?></title>
    <meta name="keywords" content="<?php echo ($_SESSION['keywords']); ?>" />
	<meta name="description" content="" />
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
          <a class="navbar-brand" href="/Xiuli/index.php/Xiuli"><?php echo ($_SESSION['Xiuli']['web']); ?></a>
        </div>
        <div id="navbar" class="collapse navbar-collapse ">
        
          <ul class="nav navbar-nav pull-right">                       
            <li><a href="/Xiuli/index.php/Xiuli/Servicelist"><span class="glyphicon glyphicon-th-list"> 主营业务</span></a></li>
            <li><a href="/Xiuli/index.php/Xiuli/Successcase"><span class="glyphicon glyphicon-gift"> 成功案例</span></a></li>
            <li><a href="/Xiuli/index.php/Xiuli/Hr"><span class="glyphicon glyphicon-user"> 诚聘人才</span></a></li>				
            <li><a href="/Xiuli/index.php/Xiuli/About"><span class="glyphicon glyphicon-phone-alt"> 关于我们</span></a></li>           
            <?php if(empty($_SESSION['isCLogin'])): ?><li><a data-toggle="modal" href="#Login" class="pull-right" >
           			<span class="glyphicon glyphicon-phone"> 直接登录</span></a>
           		</li>
           		<li>
           			<a href="/Xiuli/index.php/Xiuli/Login/qq_login"  ><img alt="" src="/Xiuli/Public/images/bt_white_76X24.png" class="hidden-xs"></a>
	           	</li>
           		
           		<!--  <li><a href="/Xiuli/index.php/Xiuli/Customer" class="pull-right" >注册</a></li>	-->
          	<?php else: ?>
          		<li>
	          		<a href="/Xiuli/index.php/Xiuli/Customer/personal">
	          			<span class="glyphicon glyphicon-user"> <?php echo ($_SESSION['realname']); ?></span>
	          		</a>
          		</li><?php endif; ?>
          </ul>                  
        </div>
      </div>
    </nav>

    <div class="container">

<span class="hidden-sm hidden-md hidden-lg"><img src="/Xiuli/Public/images/hr.png" alt="/Xiuli/Public/images/hr.png" width="100%"></span>
<div class="panel panel-primary">
     <div class="panel-heading"><h3 class="panel-title">诚聘人才</h3></div>
     <div class="panel-body">
     <span class="hidden-xs"><img src="/Xiuli/Public/images/hr.png" alt="/Xiuli/Public/images/hr.png" width="100%"></span>    	
     	<?php if(is_array($data)): $i = 0; $__LIST__ = $data;if( count($__LIST__)==0 ) : echo "暂时没有招聘信息" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?><div class="col-xs-12 col-md-6">
	        <div class="panel panel-primary">
				<div class="panel-heading"><b><?php echo ($vo["title"]); ?></b>
				  	<span class="label label-danger pull-right"><?php echo ($vo["state"]); ?></span> 
				  	<span class="pull-right"></span>
				</div>
				<div class="panel-body">
				   <b>职位：</b><?php echo ($vo["title"]); ?><br>
				   <b>人数：</b><?php echo ($vo["num"]); ?><br>
				   <b>工资：</b><?php echo ($vo["salary"]); ?><br>				    
				   <b>要求：</b><?php echo ($vo["desc"]); ?><br>
				   <b>发布日期：</b><?php echo ($vo["rtime"]); ?><br>
				   <span class="hidden-sm hidden-md hidden-lg">
				   		<a href="tel:<?php echo ($_SESSION['Xiuli']['tel']); ?>" class="btn btn-primary">电话咨询</a>
				   </span>
				   <a href="/Xiuli/index.php/Xiuli/Hr/baom/id/<?php echo ($vo["id"]); ?>" class="btn btn-primary">现在报名</a>				   		    
				</div>
			</div>
		</div><?php endforeach; endif; else: echo "暂时没有招聘信息" ;endif; ?>
        <hr>
       <div id="ckepop" class="col-xs-12 col-md-12">
				<span class="jiathis_txt">分享到：</span>
				<a class="jiathis_button_qzone">QQ空间</a>
				<a href="http://www.jiathis.com/share" class="jiathis jiathis_txt jiathis_separator jtico jtico_jiathis" target="_blank">更多</a>				
			</div><br>
			
     </div>             	
</div>          	


     	<div class="foot navbar-bottom list-inline text-center">
         	Copyright <span class="num">&copy;</span> 2016-2017
     		<a target="_blank" href="http://www.xiuliguanggao.com"><b>临城-秀丽广告</b></a> 版权所有<br>
     		<span>备案号：<?php echo ($_SESSION['Xiuli']['record']); ?>;<br>IP:<?php echo ($_SESSION['ip']); ?>;浏览器：<?php echo ($_SESSION['os']); ?>-<?php echo ($_SESSION['browser']); ?></span>
     		<p>咨询热线：<a href="tel:<?php echo ($_SESSION['Xiuli']['phone']); ?>"><?php echo ($_SESSION['Xiuli']['phone']); ?></a></p>    	
    	</div>
     </div>

	
    <script src="http://cdn.bootcss.com/jquery/1.11.1/jquery.min.js"></script>    
    <script src="http://cdn.bootcss.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
    <script src="http://res.wx.qq.com/open/js/jweixin-1.0.0.js"></script>
    <script src="http://v2.jiathis.com/code/jia.js" charset="utf-8"></script>       
    
<!-- 添加-模态框 -->
<div class="modal fade " id="Login" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
    	<div class="modal-header">
	        <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
	        <h4 class="modal-title" id="myModalLabel">登录</h4>
	    </div>
	    <div class="modal-body">
	      	<form action="/Xiuli/index.php/Xiuli/Login/login" method="post" class="form-horizontal" role="form" >	      	
				<div class="form-group">
					<label for="short" class="col-sm-2 control-label">手机:</label>
					<div class="col-sm-10">
						<input type="text" class="form-control" name="phone" value="" placeholder="用户名">
					</div>
				</div>
				<div class="form-group">
					<label for="product" class="col-sm-2 control-label">密码:</label>
					<div class="col-sm-10">
						<input type="password" class="form-control" name="password" value="" placeholder="密码">
					</div>
				</div>
										
		</div>
		<div class="modal-footer">
		     <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>		     
		     <button type="submit" class="btn btn-primary">登录</button></form>
		</div>
    </div>

    
 </body>
</html>