<?php
namespace Anshun\Controller;
use Think\Controller;
class IndexController extends Controller {
public function index(){
        
        if(!($_SESSION['init'])){
                $m=D('product');
                $data=$m->find(1);
                $_SESSION['web']=$data['web'];
                $_SESSION['adress']=$data['adress'];
                $_SESSION['desc']=$data['desc'];
                $_SESSION['phone']=$data['phone'];
                $_SESSION['tel']=$data['tel'];
                $_SESSION['qq']=$data['qq'];
                $_SESSION['weburl']=$data['url'];
                $_SESSION['record']=$data['record'];
                $_SESSION['ip']=get_client_ip();
                $_SESSION['browser']=GetBrowser();
                $_SESSION['os']=GetOs();
                $_SESSION['img']=$data['path'].$data['img'];
                $_SESSION['init']=1;                      
            }
        
        $m=D('tp_ad');
        $where['prodid']=4;
        $pic=$m->where($where)->order('utime desc')->select();
        $this->assign('pic',$pic);
                
        $this->display();
    }
}