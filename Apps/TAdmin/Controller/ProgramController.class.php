<?php
namespace TAdmin\Controller;
class ProgramController extends CommonController {
    public function index(){
        /* 接收参数*/
        $testgp=!empty($_GET['testgp']) ? $_GET['testgp'] :$_SESSION['testgp'];
        $_SESSION['testgp']=$testgp;
        $m=M('dict');
        $where=array("type"=>"testgp","state"=>"正常");
        $data=$m->where($where)
        ->field("id,k,v,state")
        ->select();
        $this->assign('data',$data);
        /* 实例化模型*/
        $m=M('project');
        $where=array("testgp"=>$testgp);
        $arr=$m->where($where)->order("end desc")
        ->field("id,name,code,begin,end,testgp,status,pri,deleted,desc,po,pm,qd,rd,order,prodid")
        ->select();
        $this->assign('arr',$arr);
        $this->assign('w',$where);

	     $this->display();
    }
    
   

    public function mod(){
        /* 接收参数*/
        $id = !empty($_POST['id']) ? $_POST['id'] : $_GET['id'];
        $testgp=!empty($_GET['testgp']) ? $_GET['testgp'] :$_SESSION['testgp'];
       /* 实例化模型*/
        $m=M('project');
        $data= $m->where(array("testgp"=>"$testgp"))
        ->order("end desc")
        ->select();
        $this->assign("data",$data);

        $arr=$m->find($id);
        $this->assign('p',$arr);               
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
       $m=M('project');        
       $map['name|code']=array('like','%'.$search.'%');       
       $arr=$m->where($map)->order("end desc")->select();
       $this->assign('arr',$arr);
   
       $where=array("search"=>$search);
       $this->assign('w',$where);
   
   
       $this->display('index');
           
   }
 
}