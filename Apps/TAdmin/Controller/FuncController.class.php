<?php
namespace TAdmin\Controller;

class FuncController extends CommonController{
    public function index(){
         /* 接收参数*/
        $pathid=$_GET['pathid'];
        $proid=$_SESSION['proid'];

        /* 实例化模型*/
        $m=D('path');
        $arr=$m->find($pathid);
        $this->assign("arr",$arr);
         
        $where['sysid']=$arr['sysid'];
        $where['state']="正常";        
        $data=$m->where($where)->order("sn,id")->select();
        $this->assign("data",$data);
        
        $m= D("func");
        $map['pathid']=$pathid;
        $funcs=$m->where($map)->order("sn")->select();
        $this->assign("funcs",$funcs);
        
        /* 添加*/
        $count=$m->where($map)->count()+1;
        $this->assign("c",$count);       
        $this -> assign("state", formselect());
        $this -> assign("fproid", proselect($proid,"fproid"));
               
	    $this->display();
    }
  

    public function insert(){
        $m=D('func');
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
        $id=$_GET['id'];
        /* 实例化模型*/
        $m= D("func");
        $func=$m->find($id);
        $this->assign("func",$func);
        $where['pathid']=$func['pathid'];
        $data=$m->where($where)->order("sn")->select();
        $this->assign("data",$data);
        

        $this -> assign("state", formselect($func['state']));
        $this -> assign("fproid", proselect($func['fproid'],"fproid"));

        $this->display();
    }

   

    public function update(){
        $db=D('func');
        $_POST['moder']=$_SESSION['realname'];
        if ($db->save($_POST)){
            $this->success("修改成功！");
        }else{
            $this->error("修改失败！");
        }
    }


    public function order(){
        dump($_POST);
        $db = D('func');
        $num = 0;
        foreach($_POST['sn'] as $id => $sn) {
            $num += $db->save(array("id"=>$id, "sn"=>$sn));
        }
        if($num) {
           $this->success("重新排序成功!");
//           $this->redirect(U('index','pathid={$_SESSION['pathid']}'));
        }else{
            $this->error("重新排序失败...");
        }
    }


    public function func(){
         /* 接收参数*/
        $proid=$_GET['proid'];
        $_SESSION['proid']=$proid;
         /* 实例化模型*/
        $m= D("program");
        $where['testgp']=$_SESSION['testgp'];
        $pros=$m->where($where)->order("end desc")->select();
        $this->assign("pros",$pros);
        
        $arr=$m->find($proid);
        $this->assign("arr",$arr);

        /* 实例化模型*/
        $s = D("prosys");
        $map['tp_prosys.proid']=$proid;
        $map['tp_path.pstate']='正常';
        
        $data=$s->where($map)
        ->join('tp_system ON tp_prosys.sysid =tp_system.id')
        ->join('tp_path ON tp_system.id = tp_path.sysid')
        ->join('tp_func ON tp_path.id = tp_func.pathid')
        ->order("tp_system.sysno,tp_path.sn,tp_path.id,tp_func.sn,tp_func.id")
        ->select();
        $this->assign("data",$data);

        $this->display();

    }


    public function range(){
        /* 接收参数*/
        $proid=$_GET['proid'];
        $_SESSION['proid']=$proid;
    	$gp=$_SESSION['testgp'];
         /* 实例化模型*/
        $m= D("program");
        $where=array("testgp"=>"$gp");
        $pros=$m->where($where)->order("end desc")->select();
        $this->assign("pros",$pros);
        
        $arr=$m->find($proid);
        $this->assign("arr",$arr);

        /* 实例化模型*/
        $s = D("system");
        $where=array("tp_func.fproid"=>"$proid","tp_func.state"=>'正常',"tp_path.pstate"=>'正常');
        $data=$s->join('inner JOIN tp_path ON tp_system.id = tp_path.sysid')
        ->join(' inner JOIN tp_func ON tp_path.id = tp_func.pathid')
        ->where($where)
        ->order("tp_system.sysno,tp_path.sn,tp_path.id,tp_func.sn,tp_func.id")
        ->select();
        $this->assign("data",$data);

        $where=array("proid"=>"$proid");
        $this->assign('w',$where);


        $this->display();

    }

    public function library(){
        /* 接收参数*/
        $proid=$_SESSION['proid'];
        $sceneid=$_GET['sceneid'];
        /* 实例化模型*/
        $m= D("prosys");
        $where=array("tp_prosys.proid"=>"$proid");
        $data=$m->join('inner JOIN tp_system ON tp_system.id = tp_prosys.sysid')
        ->join('inner JOIN tp_path ON tp_system.id = tp_path.sysid')
        ->where($where)
        ->order("tp_system.sysno,tp_path.sn,tp_path.id")
        ->select();
        $this->assign("data",$data);

        $m= D("func");
        $pathid=!empty($_GET['pathid'])?$_GET['pathid']:$data[0]['id'];
        $where=array("pathid"=>"$pathid");
        $funcs=$m->where($where)->order("sn")->select();
        $this->assign("funcs",$funcs);
        $m=D('scenefunc');
        $where=array("sceneid"=>$sceneid);
        $sfunc=$m->where($where)->order('sn')->select();
        $this->assign("sfunc",$sfunc);

        $m=D('hcfunc');
        $where=array("adder"=>$_SESSION['realname']);
        $hfunc=$m->where($where)->order('sn')->select();
        $this->assign("hfunc",$hfunc);

        $where=array("proid"=>"$proid","sceneid"=>$sceneid,"pathid"=>$pathid);
        $this->assign('w',$where);


        $this->display();
    }

    public function modproid(){
        /* 实例化模型*/

        $db=D('func');

        if ($db->save($_GET)){
            $this->success("修改成功！");
        }else{
            $this->error("修改失败！");
        }

    }

    public function pass(){
    
        /* 接收参数*/
        $arr['id']=$_GET['funcid'];
        $arr['result']='通过';
        $arr['moder']=$_SESSION['realname'];
        $db=D('func');
        if ($db->save($arr)){
            $this->success("成功！");
        }else{
            $this->error("失败！");
        }
    
    }
    
    public function reset(){
    
        /* 接收参数*/
        $arr['id']=$_GET['funcid'];
        $arr['result']='未测试';
        $arr['moder']=$_SESSION['realname'];
        $db=D('func');
        if ($db->save($arr)){
            $this->success("成功！");
        }else{
            $this->error("失败！");
        }
    
    }



    public function del(){
        /* 接收参数*/
        $id = !empty($_POST['id']) ? $_POST['id'] : $_GET['id'];
        $where['funcid']=$id;
        /* 实例化模型*/
        $m=D('case');
        $arr=$m->where($where)->select();
        if ($arr){
            $this->error('该功能点下有用例，不能删除');
        }else {
            $m=D('rules');
            $arr=$m->where($where)->select();
            if ($arr){
                $this->error('该功能点下有规则，不能删除');
            }else {
                $m=D('element');
                $arr=$m->where($where)->select();
                if ($arr){
                    $this->error('该功能点下有控件，不能删除');
                }else {
                    $m=M('func');                   
                    $count =$m->delete($id);
                    if ($count>0) {
                        $this->success('删除成功');
                    }else{
                        $this->error('删除失败');
                    }
                }
            }
        }
        
       
    }


}