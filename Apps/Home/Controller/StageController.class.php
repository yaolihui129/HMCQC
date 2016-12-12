<?php
namespace Home\Controller;
use Think\Controller;
class StageController extends Controller {
    public function index(){
        /* 接收参数*/
        $proid=$_GET['proid'];
        /* 实例化模型*/
        $m=D('program');
        $arr=$m->find($proid);
        $this->assign('arr',$arr);        
        
        $m = D("stage");
        $where=array("proid"=>"$proid");
        $data=$m->where($where)->order("sn,id")->select();
        $this->assign('data',$data);

        $this->display();
    }
}