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
        
        $m = D("prosys");
        $where=array("tp_prosys.proid"=>"$proid");
        $data=$m->where($where)->join('tp_system ON tp_prosys.sysid =tp_system.id')
        ->join('tp_path ON tp_system.id = tp_path.sysid')
        ->join('tp_func ON tp_path.id = tp_func.pathid')
        ->order("tp_system.sysno,tp_path.sn,tp_path.id,tp_func.sn,tp_func.id")->select();
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
        
//         $where['zt_tp_stage.proid']=$proid;
//         $where['zt_tp_stage.state']='已完成';
//         $where['zt_tp_exescene.results']='未测试';
        
//         $stagetester=$m->where($where)
//         ->join(' inner JOIN zt_tp_stagetester ON zt_tp_stage.id = zt_tp_stagetester.stageid')
//         ->join(' inner JOIN zt_tp_exescene ON zt_tp_stagetester.id = zt_tp_exescene.stagetesterid')
//         ->select();
//         $this->assign('tester',$stagetester);
        
        $this->display();

    }

}