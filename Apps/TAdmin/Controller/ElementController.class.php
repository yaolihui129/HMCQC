<?php
namespace TAdmin\Controller;

class ElementController extends CommonController{
    public function index(){
        /* 接收参数*/
        $p=$_GET['p'];
        $funcid=$_GET['funcid'];
        /* 实例化模型*/
        $m=D('func');
        $arr=$m->find($funcid);
        $this->assign('arr',$arr);
        
        $m=D('element');
        $where['funcid']=$funcid;
        $data=$m->where($where)->order('sn,id')->select();
        $this->assign('data',$data);
        
        
        $m=D('case');
        $cases=$m->where($where)->order('sn,id')->select();
        $this->assign('cases',$cases);
        $count=$m->where($where)->count()+1;
        $this->assign("cc",$count);
        $this->assign("caozuo",PublicController::editor("steps"));
	     $this->display();
    }

    public function add(){
        /* 接收参数*/
        $funcid=$_GET['funcid'];
        $this->assign('funcid',$funcid);
        $p=$_GET['p'];
        $this -> assign("p", $p);
        /* 实例化模型*/
        $m=M('element');
        $where['funcid']=$funcid;
        $data=$m->where($where)->order('sn')->select();
        $this->assign('data',$data);
        
        $count=$m->where($where)->count()+1;
        $this->assign("c",$count);
        $this -> assign("state", formselect());              
        $this -> assign("typeset", formselect($element['typeset'],"typeset","typeset"));
        
        $this->display();
    }
   

    public function insert(){
        $m=D('element');
        $_POST['adder']=$_SESSION['realname'];
        $_POST['moder']=$_SESSION['realname'];
        $_POST['createTime']=date("Y-m-d H:i:s",time());
        if(!$m->create()){
            $this->error($m->getError());
        }
        $lastId=$m->add();
        if($lastId){
           $this->success("添加成功");
        }else{
            $this->error("添加失败");
        }

    }

    public function mod(){
        /* 接收参数*/
        $p=$_GET['p'];
        $this -> assign("p", $p);
        $id = !empty($_POST['id']) ? $_POST['id'] : $_GET['id'];
        /* 实例化模型*/
        $m=D('element');
        $element=$m->find($id);
        $this->assign('element',$element);
        
        $where['funcid']=$element['funcid'];
        $data=$m->where($where)->order('sn')->select();
        $this->assign('data',$data);
        
        $this -> assign("state", formselect($element['state']));
        $this -> assign("typeset", formselect($element['typeset'],"typeset","typeset"));
        

        $this->display();
    }

  

    public function update(){
        $db=D('element');
        $_POST['moder']=$_SESSION['realname'];
        if ($db->save($_POST)){
            $this->success("修改成功！");
        }else{
            $this->error("修改失败！");
        }
    }


    public function order(){

        $db = D('element');
        $num = 0;
        foreach($_POST['sn'] as $id => $sn) {
            $num += $db->save(array("id"=>$id, "sn"=>$sn));
        }
        if($num) {
            $this->success("重新排序成功!");
        }else{
            $this->error("没有修改，无需排序");
        }
    }


    public function setdstate(){
        $db=D('case');
        if ($_GET['dstate']=='待维护'){
            $_GET['dstate']='已完成';
            $_GET['moder']=$_SESSION['realname'];
            if ($db->save($_GET)){
                 $this->success("修改成功！");
            }else{
                $this->error("修改失败！");
            }

        }else{
            $_GET['dstate']='待维护';
            $_GET['moder']=$_SESSION['realname'];
            $_GET['updateTime']=date("Y-m-d H:i:s",time());
            if ($db->save($_GET)){
               $this->success("修改成功！");
            }else{
                  $this->error("修改失败！");
           }
        }




    }

    public function library(){
        /* 接收参数*/
        $testgp=!empty($_GET['testgp']) ? $_GET['testgp'] :$_SESSION['testgp'];
        $proid=$_GET['proid'];
        $_SESSION['proid']=$proid;
        /* 实例化模型*/
        $m=D('program');
        $where=array("testgp"=>$testgp);
        $pros=$m->where($where)->select();
       //$this->assign('data',$data);
        $this->assign("pros",$pros);
        
        $arr=$m->find($proid);
        $this->assign("arr",$arr);
        

        $m=D("prosys");
        $where=array("proid"=>$proid);
        $elements=$m->join('inner JOIN tp_system ON tp_system.id = tp_prosys.sysid')
        ->join('inner JOIN tp_path ON tp_system.id = tp_path.sysid')
        ->join(' inner JOIN tp_func ON tp_path.id = tp_func.pathid')
        ->join(' inner JOIN tp_element ON tp_func.id = tp_element.funcid')
        ->where($where)
        ->order("tp_system.sysno,tp_path.sn,tp_path.id,tp_func.sn,tp_func.id,tp_element.sn,tp_element.id")
        ->select();
        $this->assign('elements',$elements);
        $this->assign('w',$where);

        $this->display();
    }

    public function del(){
        /* 接收参数*/
        $id = !empty($_POST['id']) ? $_POST['id'] : $_GET['id'];
        /* 实例化模型*/
        $m=D('element');        
        $count =$m->delete($id);
        if ($count>0) {
            $this->success('删除成功');
        }else{
            $this->error('删除失败');
        }
    }


}