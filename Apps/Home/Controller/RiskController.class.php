<?php
namespace Home\Controller;
use Think\Controller;
class RiskController extends Controller {
  public function index(){
        /* 接收参数*/
        $proid=$_GET['proid'];

        /* 实例化模型*/
        $m=D('program');
        $arr=$m->find($proid);
        $this->assign('arr',$arr);
        
        $m = D("risk");
        $where=array("proid"=>$proid);
        $data=$m->where($where)->select();
        $this->assign("data",$data);
        $this->assign('w',$where);

        $this->display();
    }
}