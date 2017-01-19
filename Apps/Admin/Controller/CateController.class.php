<?php
namespace Admin\Controller;
class CateController extends CommonController {
    
    public function index(){
        $m=D('tp_cate');
        $data=$m->select();
        $this->assign('data',$data);
        
        $this->display();
    }
    
    public function insert(){
    
        $m=D('tp_cate');
         
        $_POST['moder']=$_SESSION['realname'];
        $_POST['prodid']=$_SESSION['prodid'];
    
        if(!$m->create()){
            $this->error($m->getError());
        }
        $lastId=$m->add();
        if($lastId){
            $this->success("成功");
        }else{
            $this->error('失败');
        }
    }
    
    public function mod(){
        $m=D('tp_cate');
        $arr=$m->find($_GET[id]);
        $this->assign('arr',$arr);
        $this -> assign("state", formselect($arr['state']));
    
        $this->display();
    }
    
    
    public function update(){
        /* 实例化模型*/
        $db=D('tp_cate');
        $_POST['moder']=$_SESSION['realname'];
        if ($db->save($_POST)){
            $this->success("修改成功！");
        }else{
            $this->error("修改失败！");
        }
    }
    
    public function del(){
        /* 接收参数*/
        $id = !empty($_POST['id']) ? $_POST['id'] : $_GET['id'];
        /* 实例化模型*/
        $m=D('tp_cate');
        $count =$m->delete($id);
        if ($count>0) {
            $this->success('删除成功');
        }else{
            $this->error('删除失败');
        }
    
    }

}