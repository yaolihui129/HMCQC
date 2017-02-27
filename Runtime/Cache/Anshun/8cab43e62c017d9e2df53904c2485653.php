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
 	<img src="/Xiuli/Public/images/Anshun/banner.jpg" alt="安顺汽修" width="100%">
</div>

<div class="container text-center">         
   <h1 >安顺汽车服务中心</h1><br>
   <span class="hidden-sm hidden-md hidden-lg">
   <a href="tel:<?php echo ($_SESSION['Anshun']['phone']); ?>" class="btn btn-lg btn-outline">马上预约</a>
   </span>
   <span class="hidden-xs"><a href="#" class="btn btn-lg btn-outline">马上预约</a></span>
</div>
<hr>

<div class="function-list bg-gray">
    <div class="function clearfix">
        <div class="col-md-6 col-xs-12 ">
            <div class="function-title"><span>钣金喷漆</span></div>
            <div class="function-text">
                            钣金喷漆是一种汽车修复技术，就是把将汽车金属外壳变形部分进行修复，比如车体外壳被撞了个坑，就可以通过钣金使之恢复原样，然后再通过喷涂专用油漆，
				使变形的汽车金属表面恢复到与其他完好的地方一样，光亮如初
            </div>
            <a href="/Xiuli/index.php/Anshun/Servicelist/index/cate/1" class="btn btn-lg btn-outline pull-right"> 
                <span>查看更多  </span><span class="glyphicon glyphicon-circle-arrow-right"></span>
            </a>                        
         </div>
         <div class="col-md-6 col-xs-12">
             <br><img src="/Xiuli/Public/images/Anshun/feature-1.jpg"  width="100%">                       
         </div>                
     </div>
     
     <div class="function clearfix">               
         <div class="col-md-6 col-xs-12"><img src="/Xiuli/Public/images/Anshun/feature-2.jpg" width="100%"></div>
             <div class="col-md-6 col-xs-12">
                 <div class="function-title"><span>汽车维修</span></div>
                 <div class="function-text">
                      	汽车维修（vehicle maintenance and repair），汽车维护和修理的泛称。
                                           就是对出现故障的汽车通过技术手段排查，找出故障原因，
                           	并采取一定措施使其排除故障并恢复达到一定的性能和安全标准。
                           	汽车维修包括汽车大修和汽车小修，汽车大修是指用修理或更换汽车任何零部件（包括基础件）的方法，
                           	恢复汽车的完好技术状况和完全（或接近完全）恢复汽车寿命的恢复性修理。
                           	而汽车小修是指：用更换或修理个别零件的方法，保证或恢复汽车工作能力的运行性修理。
                 </div>
                 <a href="/Xiuli/index.php/Anshun/Servicelist/index/cate/2" class="btn btn-lg btn-outline pull-left"> 
                      <span>查看更多  </span><span class="glyphicon glyphicon-circle-arrow-right"></span>
                 </a>                       
             </div>                
     </div>
            
     <div class="function clearfix">
         <div class="col-md-6 col-xs-12">
             <div class="function-title"><span>汽车保养</span></div>
             <div class="function-text">
                  	 汽车保养是指定期对汽车相关部分进行检查、清洁、补给、润滑、调整或更换某些零件的预防性工作，又称汽车维护。
					 现代的汽车保养主要包含了对发动机系统（引擎）、变速箱系统、空调系统、冷却系统、燃油系统、动力转向系统等的保养范围。
					汽车保养的目的是保持车容整洁，技术状况正常，消除隐患，预防故障发生，减缓劣化过程，延长使用周期。
             </div>
             <a href="/Xiuli/index.php/Anshun/Servicelist/index/cate/3" class="btn btn-lg btn-outline pull-right"> 
                <span>查看更多  </span><span class="glyphicon glyphicon-circle-arrow-right"></span>
             </a>                       
         </div>
         <div class="col-md-6 col-xs-12">
              <br><img src="/Xiuli/Public/images/Anshun/feature-3.jpg" width="100%">                        
         </div>               
     </div>

     <div class="function clearfix">                
          <div class="col-md-6 col-xs-12">
              <img src="/Xiuli/Public/images/Anshun/feature-4.jpg" width="100%"/>                        
          </div>
          <div class="col-md-6 col-xs-12">
              <div class="function-title"><span>汽车用品</span></div>
              <div class="function-text">
                  	汽车用品（automobile accessories）是指应用于汽车改装、汽车美容、汽车装饰等汽车电子及零部件等相关产品。
                                    汽车是现代生活的必需品。越来越多的人拥有了自己的私家车，汽车用品或者说汽车保养用品也就成了车辆保养所必不可少的一部分。
                                    汽车用品按功能分类，可分为保养类、装饰类、清洁类等。
              </div>
              <a href="/Xiuli/index.php/Anshun/Servicelist/index/cate/5" class="btn btn-lg btn-outline pull-left"> 
                 <span>查看更多  </span><span class="glyphicon glyphicon-circle-arrow-right"></span>
              </a>
           </div>
     </div>
  <div class="function clearfix">
       <img src="/Xiuli/Public/images/Anshun/ditu.jpg" alt="安顺汽修" width="100%">       	 
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