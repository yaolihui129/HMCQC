<?php
namespace Admin\Controller;
use Think\Controller;
class UsecarController extends Controller {
    public function index(){

        $m=D('dict');
        $where=array("type"=>"usecar","state"=>"正常");
        $data=$m->where($where)->order('k')->select();
        $this->assign('data',$data);

        $m=D('usecar');
        $type=!empty($_GET['type']) ? $_GET['type'] : 6;
        $where=array("type"=>$type);
        $arr=$m->where($where)->order('updatetime desc')->select();
        $this->assign('arr',$arr);
        $this->assign('w',$where);
        $this->display();
    }

    public function add(){

        $m=D('usecar');
        $type=$_GET['type'];
        $where=array("type"=>$type);
        $this->assign('w',$where);
        $arr=$m->where($where)->order('updatetime desc')->select();
        $this->assign('arr',$arr);
        $this->assign("content",PublicController::editor("content",$arr['desc']));
        $this->assign("state", PublicController::stateSelect("发布","state","state"));

        $this->display();

    }

    public function insert(){
        /* 实例化模型*/
        $m=D('usecar');
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

        $m=D('usecar');
        $type=$_GET['type'];
        $where=array("type"=>$type);
        $this->assign('w',$where);
        $arr=$m->where($where)->order('updatetime desc')->select();
        $this->assign('arr',$arr);

        $data=$m->find($_GET['id']);
        $this->assign('data',$data);
        $this->assign("content",PublicController::editor("content",$data['content']));
        $this->assign("state", PublicController::stateSelect($data['state'],"state","state"));

        $this->display();
    }

    public function update(){
        /* 实例化模型*/
        $db=D('usecar');
        $_POST['moder']=$_SESSION['realname'];
        if ($db->save($_POST)){
            $this->success("修改成功！");
        }else{
            $this->error("修改失败！");
        }
    }

    public function photo(){
        /* 接收参数*/
        $id = !empty($_POST['id']) ? $_POST['id'] : $_GET['id'];
        /* 实例化模型*/
        $m=M('usecar');
        $m=D('usecar');
        $type=$_GET['type'];
        $where=array("type"=>$type);
        $this->assign('w',$where);
        $arr=$m->where($where)->order('updatetime desc')->select();
        $this->assign('arr',$arr);

        $data=$m->find($_GET['id']);
        $this->assign('data',$data);
        $this->assign("state", PublicController::stateSelect($data['state'],"state","state"));

        $this->display();
    }


    public function image(){
        $upload = new \Think\Upload();// 实例化上传类
        $upload->maxSize   =     3145728 ;// 设置附件上传大小
        $upload->exts      =     array('jpg', 'gif', 'png', 'jpeg');// 设置附件上传类型
        $upload->rootPath =  './Public/Upload/';// 设置附件上传目录
        $upload->savePath  = '/Admin/usecar/'; // 设置附件上传目录
        // 上传文件
        $info  =   $upload->upload();

        if(!$info) {// 上传错误提示错误信息
            $this->error($upload->getError());
        }else{// 上传成功 获取上传文件信息
            $_POST['path']=$info['photo']['savepath'];
            $_POST['img']=$info['photo']['savename'];
            /* 实例化模型*/
            $db=D('usecar');
            if ($db->save($_POST)){
                $this->success("成功！");
            }else{
                $this->error("失败！");
            }
        }
    }


    public function del(){
        /* 接收参数*/
        $id = !empty($_POST['id']) ? $_POST['id'] : $_GET['id'];
        /* 实例化模型*/
        $m=M('usecar');
        $count =$m->delete($id);
        if ($count>0) {
            $this->success('删除成功');
        }else{
            $this->error('删除失败');
        }
    }



}