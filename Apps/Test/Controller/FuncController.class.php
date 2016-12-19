<?php
namespace Test\Controller;
use Think\Controller;
class FuncController extends Controller {

    public function func(){
        /* 接收参数*/
        $proid=$_GET['proid'];
        $proid=$_SESSION['proid'];
        /* 实例化模型*/
        $m=D('program');
        $arr=$m->find($proid);
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
        $m=D('program');
        $arr=$m->find($proid);
        $this->assign('arr',$arr);
        
        $m = D("stage");
        $where=array("proid"=>$proid);
        $stage=$m->where($where)->order("sn,id")->select();
        $this->assign('stage',$stage);
        
        $where['tp_stage.proid']=$proid;
        $where['tp_stage.state']='已完成';
        $where['tp_exescene.results']='未测试';
        
        $stagetester=$m->where($where)
        ->join(' inner JOIN tp_stagetester ON tp_stage.id = tp_stagetester.stageid')
        ->join(' inner JOIN tp_exescene ON tp_stagetester.id = tp_exescene.stagetesterid')
        ->select();
        $this->assign('tester',$stagetester);
        //dump($stagetester);
        
        $m = D("system");
        $where=array("tp_func.fproid"=>$proid,"tp_func.state"=>'正常',"tp_path.pstate"=>'正常');
        $data=$m->join('inner JOIN tp_path ON tp_system.id = tp_path.sysid')
        ->join(' inner JOIN tp_func ON tp_path.id = tp_func.pathid')->where($where)
        ->order("tp_system.sysno,tp_path.sn,tp_path.id,tp_func.sn,tp_func.id")->select();
        $this->assign("data",$data);

        $this->display();

    }

}