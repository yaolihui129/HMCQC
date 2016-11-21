<?php
namespace Test\Controller;
use Think\Controller;
class StageController extends Controller {
    public function index(){
        /* 接收参数*/
        $proid=$_GET['proid'];
        $testgp=$_GET['testgp'];

        /* 实例化模型*/
        $m=D('program');
        $arr=$m->find($proid);
        $this->assign('arr',$arr);
        
        
        $m = D("stage");
        $where=array("proid"=>"$proid");
        $data=$m->where($where)->order("sn,id")->select();
        $this->assign('data',$data);
        $where=array("proid"=>$proid,"testgp"=>$testgp);
        $this->assign('w',$where);

        $this->display();
    }
}