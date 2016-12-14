<?php
namespace Test\Controller;
use Think\Controller;
class IndexController extends Controller {
    public function index(){
        $id=!empty($_GET['id']) ? $_GET['id'] : 14;
        
        $where['proid']=$id;
        /* 实例化模型*/
        $m=M('program');
        $data=$m->where($where)
        ->order("end desc")
        ->limit(12)
        ->select();
        
        $this->assign('data',$data);
        
        $this->display();
    }
        
        
}