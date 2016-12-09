<?php
namespace Home\Controller;
use Think\Controller;
class RulesController extends Controller {

  public function index(){
     /* 接收参数*/
     $funcid=$_GET['funcid'];
     /* 实例化模型*/
     $m=D('func');
     $arr=$m->find($funcid);
     $this->assign('arr',$arr);

     $where['pathid']=$arr['pathid'];
     $data=$m->where($where)->order('sn,id')->select();
     $this->assign('data',$data);
        
     $m=D('rules');
     $where['funcid']=$funcid;
     $rules=$m->where($where)->select();
     $this->assign('rules',$rules);

    $this->display();
  }


}