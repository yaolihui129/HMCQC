<?php
namespace Test\Controller;
use Think\Controller;
class CaseController extends Controller {
   public function index(){
        /* 接收参数*/
         $funcid=$_GET['funcid'];
         /* 实例化模型*/
         $m=D('tp_func');
         $arr=$m->find($funcid);
         $this->assign('arr',$arr);
         $where['pathid']=$arr['pathid'];
         $data=$m->where($where)->order('sn,id')->select();
         $this->assign('data',$data);
         
    	 $m=D('case');
    	 $where['funcid']=$funcid;
    	 $cases=$m->where($where)->order('sn,id')->select();
	     $this->assign('cases',$cases);        

        $this->display();
    }



    public function procase(){
        /* 接收参数*/
        $proid=$_GET['proid'];
        /* 实例化模型*/
        $m=D('project');
        $arr=$m->field("id,name,code,begin,end,testgp,status,pri,deleted,desc,po,pm,qd,rd,order")->find($proid);
        $this->assign('arr',$arr);
        
        $m=M('branch');
        $where=array("zt_tp_case.fproid"=>$proid);
        $data=$m->join('inner JOIN zt_module ON zt_branch.id = zt_module.branch')
        ->join(' inner JOIN zt_tp_func ON zt_module.id = zt_tp_func.pathid')
        ->join(' inner JOIN zt_tp_case ON zt_tp_func.id = zt_tp_case.funcid')
        ->where($where)->order("zt_branch.sysno,zt_module.sn,zt_module.id,zt_tp_func.sn,zt_tp_func.id,zt_tp_case.sn,zt_tp_case.id")->select();
        $this->assign('data',$data);        

        $this->display();

    }



    public function update(){
        /* 实例化模型*/
        $db=D('tp_case');
        if ($db->save($_POST)){
            $this->success("修改成功！");
        }else{
            $this->error("修改失败！");
        }


    }
}