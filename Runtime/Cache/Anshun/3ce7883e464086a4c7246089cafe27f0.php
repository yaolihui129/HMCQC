<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html>
<html lang="zh-cn">
<head>        
        <meta charset="utf-8"><meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title><?php echo ($_SESSION['Anshun']['web']); ?></title>
        <meta name="keywords" content="#">
        <meta name="description" content="#">
        <link rel="stylesheet" type="text/css" href="/Xiuli/Public/css/as_home.css" />
        <link href="http://cdn.bootcss.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet">
        <link rel="stylesheet" type="text/css" href="/Xiuli/Public/css/as_home.css" />
       
        
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
          <a class="navbar-brand" href="/Xiuli/index.php/Xiuli"><?php echo ($_SESSION['Anshun']['web']); ?></a>
        </div>
        <div id="navbar" class="collapse navbar-collapse ">
        
          <ul class="nav navbar-nav pull-right">                       
            <li><a href="/Xiuli/index.php/Anshun"><span class="glyphicon glyphicon-home"> 首页</span></a></li>
            <li><a href="/Xiuli/index.php/Anshun/Servicelist/index/cate/1"><span class="glyphicon glyphicon-th-list"> 主营业务</span></a></li>
            <li><a href="/Xiuli/index.php/Anshun/Servicelist/index/cate/5"><span class="glyphicon glyphicon-gift"> 汽车用品</span></a></li>
            <li><a href="/Xiuli/index.php/Anshun/About/hr"><span class="glyphicon glyphicon-user"> 诚聘人才</span></a></li>				
            <li><a href="/Xiuli/index.php/Anshun/About"><span class="glyphicon glyphicon-phone-alt"></span> 关于我们</a></li>           
            <?php if(empty($_SESSION['isCLogin'])): ?><li><a data-toggle="modal" href="#Login" class="pull-right" >登录</a></li>
           		<li><a  href="/Xiuli/index.php/Anshun/Customer" class="pull-right" >注册</a></li>	
          	<?php else: ?>
          		<li>
	          		<a href="/Xiuli/index.php/Anshun/Customer/personal">
	          			<span class="glyphicon glyphicon-user"> <?php echo ($_SESSION['realname']); ?></span>
	          		</a>
          		</li><?php endif; ?>
          </ul>                  
        </div>
      </div>
    </nav>

   <!-- <div class="container">  -->      
	
<div class="container">
<div class="row">
	<div class="panel panel-primary">
		<div class="panel-heading">
			<h3 class="panel-title">
				<?php echo (getCatname($arr["cate"])); ?>-<b><?php echo ($arr["name"]); ?></b>
				<a href="/Xiuli/index.php/Anshun/Servicelist/index/cate/<?php echo ($arr["cate"]); ?>" class="pull-right">返回分类</a>
			</h3>
		</div>
		<div class="panel-body">
			<div class="col-md-4 ">
				<img src="/Xiuli/Upload/Anshun<?php echo ($arr["path"]); echo ($arr["img"]); ?>" alt="<?php echo ($arr["img"]); ?>"  height="180px">		
			</div>
			<div class="col-md-7 ">
				<h5>编号：<?php echo ($arr["mark"]); ?></h5>
				<h4>名称：<?php echo ($arr["name"]); ?></h4>
				<?php switch($arr["money"]): case "0": ?><br><?php break;?>				    
				    <?php default: ?><h4>价格：<b>￥<?php echo ($arr["money"]); ?></b>(市场价：<s><em>￥<?php echo ($arr["smoney"]); ?></em></s>)</h4>
								<!--<h4>运费：￥<?php echo ($arr["wlmoney"]); ?></h4>--><?php endswitch;?>
				<span class="hidden-md hidden-lg">
					<a href="tel:<?php echo ($_SESSION['Anshun']['phone']); ?>" class="btn btn-info btn-xs">电话咨询</a><br>
				</span>
				<span class="hidden-xs hidden-sm">
					<a href="http://wpa.qq.com/msgrd?v=3&amp;uin=<?php echo ($_SESSION['Anshun']['qq']); ?>&amp;site=qq&amp;menu=yes" class="btn-xs" target="_blank">
						<img border="0" title="在线客服" alt="在线客服" style="margin-top:0px;" src="http://wpa.qq.com/pa?p=2:<?php echo ($_SESSION['Anshun']['qq']); ?>:41">
					</a>
				</span>
				<hr>
       			<div id="ckepop" class="col-xs-12 col-md-12">
					<span class="jiathis_txt">分享到：</span>
					<a class="jiathis_button_qzone">QQ空间</a>
					<a href="http://www.jiathis.com/share" class="jiathis jiathis_txt jiathis_separator jtico jtico_jiathis" target="_blank">更多</a>				
				</div><hr>
				
				
				
				
					
			</div>	
		</div>
	</div>
	<div class="panel panel-primary">
		<div class="panel-heading"><h3 class="panel-title">详情介绍：</h3></div>
		<div class="panel-body"><p><?php echo ($arr["content"]); ?></p></div>						
	</div>
</div>
</div>
	

	<div class="footer">
 			<div class="footer-bar">
                <div class="container-fluid">                   
                    <div class="col-md-12">
                        <ul class="footer-links">                                                                            
                            <li>Copyright <span class="num">&copy;</span> 2016-2017</li>
                        	<li><a target="_blank" href="http://www.xiuliguanggao.com"><b>临城-秀丽广告</b></a>版权所有</li>
                            <li> 热线：<a href="tel:<?php echo ($_SESSION['Anshun']['phone']); ?>"><?php echo ($_SESSION['Anshun']['phone']); ?></a></li>
                            <li>浏览器：<?php echo ($_SESSION['os']); ?>-<?php echo ($_SESSION['browser']); ?></li>
                            <li>IP:<?php echo ($_SESSION['ip']); ?></li>
                        </ul>
                    </div>
                </div>
            </div>           
      </div>

        <script>var _hmt = _hmt || [];
            (function() {
              var hm = document.createElement("script");
              hm.src = "//hm.baidu.com/hm.js?623ff2e94a823384c27450f3c2736886";
              var s = document.getElementsByTagName("script")[0]; 
              s.parentNode.insertBefore(hm, s);
            })()
        </script>
        <!--[if lt IE 9]>
	        <script>(src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js")</script>
	        <script>(src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js")</script>
        <![endif]-->
        <script src="http://cdn.bootcss.com/jquery/1.11.1/jquery.min.js"></script>
        <script src="http://cdn.bootcss.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
        <script src="http://res.wx.qq.com/open/js/jweixin-1.0.0.js"></script>        
    	<script src="http://v2.jiathis.com/code/jia.js" charset="utf-8"></script>      
        
        <script type="text/javascript" src="/Xiuli/Public/js/as_ref.js"></script>
        <script type="text/javascript" src="/Xiuli/Public/js/as_advice.js"></script>
        <script type="text/javascript" src="/Xiuli/Public/js/as_appear.js"></script>
        <script type="text/javascript" src="/Xiuli/Public/js/as_echarts.js"></script>
        <script type="text/javascript" src="/Xiuli/Public/js/as_config.js"></script>
        <script type="text/javascript" src="/Xiuli/Public/js/as_home.js"></script>        
    </body>
</html>