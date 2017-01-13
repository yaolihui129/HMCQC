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
        $arr=$m->field("id,name,code,begin,end,testgp,status,pri,deleted,desc,po,pm,qd,rd,order,prodid")->find($proid);
        $this->assign('arr',$arr);
        
        $m=M('system');
        $where=array("tp_case.fproid"=>$proid);
        $data=$m->join('inner JOIN tp_path ON tp_system.id = tp_path.sysid')
        ->join(' inner JOIN tp_func ON tp_path.id = tp_func.pathid')
        ->join(' inner JOIN tp_case ON tp_func.id = tp_case.funcid')
        ->where($where)->order("tp_system.system,tp_path.sn,tp_path.id,tp_func.sn,tp_func.id,tp_case.sn,tp_case.id")->select();
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