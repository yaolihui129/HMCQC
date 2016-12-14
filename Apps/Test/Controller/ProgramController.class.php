<?php
namespace Test\Controller;
use Think\Controller;
class ProgramController extends Controller {
   public function index(){

        /* 接收参数*/
        $testgp=!empty($_GET['testgp']) ? $_GET['testgp'] :"OP";
        $m=M('dict');
        $where=array("type"=>"testgp","state"=>"正常");
        $data=$m->where($where)->select();
        $this->assign('data',$data);

        /* 实例化模型*/
        $m=M('program');
        $where=array("testgp"=>$testgp);
        $arr=$m->where($where)->order("end desc")->limit(12)->select();
        $this->assign('arr',$arr);

   
        $this->assign('w',$where);


        $this->display();
    }
    
    public function search(){
              
        /* 接收参数*/
        $testgp=$_POST['testgp'];
        $search=$_POST['search'];
        $m=M('dict');
        $where=array("type"=>"testgp","state"=>"正常");
        $data=$m->where($where)->select();
        $this->assign('data',$data);
        
        /* 实例化模型*/
        $m=M('program');
                       
        $map['manager|prost|program|prono']=array('like','%'.$search.'%');
               
        $arr=$m->where($map)->order("end desc")->select();
        $this->assign('arr',$arr);
        
        $where=array("search"=>$search);
        $this->assign('w',$where);
        
        
        $this->display('index');
        
        
        
        
    }
}