<?php
namespace ASAdmin\Controller;
use Think\Controller;
class IndexController extends Controller {
    public function index(){
        $ip= get_client_ip();
        //echo $ip;
        $this->assign('ip',$ip);
        //         dump($ip);
	     $this->display();
    }
}