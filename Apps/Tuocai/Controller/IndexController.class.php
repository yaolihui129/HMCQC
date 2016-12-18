<?php
namespace Tuocai\Controller;
use Think\Controller;
class IndexController extends Controller {
    public function index(){
       
        $m=D('product');
        $data=$m->find(7);
        $_SESSION['web']=$data['web'];
        $_SESSION['adress']=$data['adress'];
        $_SESSION['desc']=$data['desc'];
        $_SESSION['phone']=$data['phone'];
        $_SESSION['telphone']=$data['telphone'];
        $_SESSION['qq']=$data['qq'];
        $_SESSION['weburl']=$data['url'];
        $_SESSION['ip']=get_client_ip();
        $_SESSION['browser']=GetBrowser();
        $_SESSION['os']=GetOs();
        $_SESSION['img']=$data['path'].$data['img'];
        $_SESSION['init']=1;
       
        $m=D('ad');
        $where['prodid']=7;
        $pic=$m->where($where)->order('updateTime desc')->select();
        $this->assign('pic',$pic);
        
        
        $m=M('tc_course');
        $where['coursetype']="学前少儿";
        $where['state']='发布';
        $data=$m->where($where)->order('updateTime desc')->limit(4)->select();
        $this->assign('datase',$data);
        
        $where['coursetype']="小学课程";
        $where['state']='发布';
        $data=$m->where($where)->order('updateTime desc')->limit(4)->select();
        $this->assign('dataxx',$data);
        
        $where['coursetype']="中学课程";
        $where['state']='发布';
        $data=$m->where($where)->order('updateTime desc')->limit(4)->select();
        $this->assign('datazx',$data);
        
        $where['coursetype']="兴趣拓展";
        $where['state']='发布';
        $data=$m->where($where)->order('updateTime desc')->limit(4)->select();
        $this->assign('dataxq',$data);
        
        $map['isteacher'] = !empty($_GET['isteacher']) ? $_GET['isteacher'] : 1;
        $map['state']="发布";
        $m=M('tc_customer');
        $data=$m->where($map)->order('updateTime desc')->select();
        $this->assign('datasz',$data);
        
        $this->display();
    }
       
}