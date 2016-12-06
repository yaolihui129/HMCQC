<?php
namespace Home\Controller;
use Think\Controller;
class UserController extends Controller {
    
    public function index(){

        $m=M('user');
        $where['state']="在职";
        $where['usergp']=$_GET['testgp'];
        $arr=$m->where($where)->order('updateTime desc')->select();
        $this->assign('data',$arr);
        $this->assign('testgp',$_GET['testgp']);
    
        $this->display();
    }
    
    
}