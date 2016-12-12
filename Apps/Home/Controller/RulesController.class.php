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
  public function prorules(){
      /* 接收参数*/
      $proid=$_GET['proid'];
      
      /* 实例化模型*/
      $m=D('program');
      $arr=$m->find($proid);
      $this->assign('arr',$arr);
      
      $m=M('system');
      $where=array("tp_func.fproid"=>$proid);
      $data=$m->join('inner JOIN tp_path ON tp_system.id = tp_path.sysid')
      ->join(' inner JOIN tp_func ON tp_path.id = tp_func.pathid')->where($where)
      ->order("tp_system.system,tp_path.sn,tp_path.id,tp_func.sn,tp_func.id")->select();
      $this->assign('data',$data);
      
      $this->display();
      
  }


}