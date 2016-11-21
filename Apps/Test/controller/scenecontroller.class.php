<?php
namespace Test\Controller;
use Think\Controller;
class SceneController extends Controller {
   public function index(){
        /* 接收参数*/
        $proid=$_GET['proid'];

        /* 实例化模型*/
        $m=D('program');
        $arr=$m->find($proid);
        $this->assign('arr',$arr);
        
        $m = D("scene");
        $where=array("proid"=>$proid);
        $data=$m->where($where)->select();
        $this->assign("data",$data);
        //dump($data);

        $this->assign('w',$where);

        $this->display();
    }
    
    
}