<?php
namespace Home\Controller;
use Think\Controller;
class IndexController extends Controller {
    public function index(){
        $where=array("prodid"=>14);
        /* 实例化模型*/
        $m=M('program');
        $data=$m->where($where)->order("end desc")->limit(12)->select();
        
        $this->assign('data',$data);
        
        $this->display();
    }
        
        
}