<?php
namespace Tuocai\Controller;
use Think\Controller;
class IndexController extends Controller {
    public function index(){
        
        $m=D('product');
        $data=$m->find(6);
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
       
        $m=D('tp_ad');
        $where['prodid']=6;
        $pic=$m->where($where)->order('utime desc')->select();
        $this->assign('pic',$pic);
        
        $m=D('xd_prodservice');
        $where['istj']=1;
        $where['state']="发布";
        $data=$m->where($where)
        ->field("id,mark,name,state,money,smoney,num,istj,cate,path,img,utime")
        ->order('utime desc')
        ->select();
        $this->assign('data',$data);
        
        $map['isteacher'] = !empty($_GET['isteacher']) ? $_GET['isteacher'] : 1;
        $map['state']="发布";
        $m=M('tc_customer');
        $arr=$m->where($map)->order('utime desc')->select();
        $this->assign('arr',$arr);                
        
        $this->display();
    }
       
}