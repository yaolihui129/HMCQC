<?php
namespace Test\Controller;
use Think\Controller;
class FuncController extends Controller {

    public function func(){
        /* 接收参数*/
        $proid=$_GET['proid'];
        $proid=$_SESSION['proid'];
        /* 实例化模型*/
        $m=D('project');
        $arr=$m->field("id,name,code,begin,end,testgp,status,pri,deleted,desc,po,pm,qd,rd,order,prodid")->find($proid);
        $this->assign('arr',$arr);
        
        $m = D("tp_prosys");
        $where=array("zt_tp_prosys.project"=>$proid);
        $data=$m->where($where)->join('zt_branch ON zt_tp_prosys.branch =zt_branch.id')
        ->join('zt_module ON zt_branch.id = zt_module.branch')
        ->join('zt_tp_func ON zt_module.id = zt_tp_func.pathid')
        ->order("zt_branch.sysno,zt_module.sn,zt_module.id,zt_tp_func.sn,zt_tp_func.id")->select();
        $this->assign("data",$data);

        $this->display();

    }


    public function range(){
        /* 接收参数*/
        $proid=$_GET['proid'];
        $_SESSION['proid']= $proid;
        /* 实例化模型*/
        $m=D('project');
        $arr=$m->field("id,name,code,begin,end,testgp,status,pri,deleted,desc,po,pm,qd,rd,order,prodid")->find($proid);
        $this->assign('arr',$arr);

        $m = D("tp_stage");
        $where=array("proid"=>$proid);
        $stage=$m->where($where)->order("sn,id")->select();
        $this->assign('stage',$stage);
        
        $where['zt_tp_stage.proid']=$proid;
        $where['zt_tp_stage.state']='已完成';
        $where['zt_tp_exescene.results']='未测试';
        
        $stagetester=$m->where($where)
        ->join(' inner JOIN zt_tp_stagetester ON zt_tp_stage.id = zt_tp_stagetester.stageid')
        ->join(' inner JOIN zt_tp_exescene ON zt_tp_stagetester.id = zt_tp_exescene.stagetesterid')
        ->select();
        $this->assign('tester',$stagetester);
        
        $this->display();

    }

}