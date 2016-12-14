<?php
namespace Anshun\Controller;
use Think\Controller;
class CaseController extends Controller {
    public function index(){
        $m=D('setting');
        $data=$m->find(1);
        $_SESSION['phone']=$data['phone'];
        $_SESSION['qq']=$data['qq'];
        $_SESSION['ip']=get_client_ip();
        
        $m=D('case');
        $arr=$m->select();
        $this->assign('data',$arr);
        
        $this->display();
        
    }
}