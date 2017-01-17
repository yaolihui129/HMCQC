<?php
namespace mtsh\Controller;
use Think\Controller;
class IndexController extends Controller {
    public function index(){
        
        $m=D('product');
        $data=$m->find(3);
        $_SESSION['web']=$data['web'];
        $_SESSION['adress']=$data['adress'];
        $_SESSION['desc']=$data['desc'];
        $_SESSION['phone']=$data['phone'];
        $_SESSION['qq']=$data['qq'];
        $_SESSION['weburl']=$data['url'];
        $_SESSION['ip']=get_client_ip();
        $_SESSION['browser']=GetBrowser();
        $_SESSION['os']=GetOs();
        $_SESSION['img']=$data['path'].$data['img'];
        $_SESSION['init']=1;
         
        $m=D('ad');
        $where['prodid']=3;
        $pic=$m->where($where)->order('updateTime desc')->select();
        $this->assign('pic',$pic);
        
        $this->display();
        
    }
        
}