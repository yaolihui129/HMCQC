<?php
namespace Admin\Controller;
class TechController extends CommonController {
    public function mod(){
        /* 接收参数*/
        $id = !empty($_POST['id']) ? $_POST['id'] : $_GET['id'];
        /* 实例化模型*/
        $m=M('admin');
        $where=array("state"=>"在职");
        $arr=$m->where($where)->select();
        $this->assign('data',$arr);

        $user=$m->find($id);
        $this->assign('tech',PublicController::stateSelect($user['tech'],"tech","tech"));
        //echo $user['tech'];
        $this->assign('user',$user);
        $this->assign("desc",PublicController::editor("desc",$user['desc']));

        $this->display();

    }

    public function update(){
        /* 实例化模型*/
        $db=D('admin');
        $_POST['moder']=$_SESSION['realname'];
        if ($db->save($_POST)){
            $this->success("修改成功！");
        }else{
            $this->error("修改失败！");
        }
    }
}