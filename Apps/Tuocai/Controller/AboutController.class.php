<?php
namespace Tuocai\Controller;
use Think\Controller;
class AboutController extends Controller {
    public function index(){
        $m=D('product');
        $data=$m->find(2);
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
        
        $m=M('tp_hr');
        $where=array('state'=>"发布",'prodid'=>2);
        $arr=$m->where($where)->select();
        $this->assign('data',$arr);
        
        $this->display();
    }
    
    
   
}