<?php
namespace Xiuli\Controller;
use Think\Controller;
class IndexController extends Controller {
    public function index(){
    
        $m=D('product');
        $data=$m->find(1);
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
        
        
        $m=D('tp_ad');
        $where['prodid']=1;
        $pic=$m->where($where)->order('updateTime desc')->select();
        $this->assign('pic',$pic);       
        
        $m=D('xl_service');
        $map['cate']=1;
        $arr1=$m->where($map)->order('sn,id')->limit(4)->select();
        $this->assign('arr1',$arr1);
        
        $map['cate']=2;
        $arr2=$m->where($map)->order('sn,id')->limit(4)->select();
        $this->assign('arr2',$arr2);
        
        $map['cate']=5;
        $arr5=$m->where($map)->order('sn,id')->limit(4)->select();
        $this->assign('arr5',$arr5);
        
        $map['cate']=6;
        $arr6=$m->where($map)->order('sn,id')->limit(4)->select();
        $this->assign('arr6',$arr6);             
                
        $this->display();
        
        
    }
}