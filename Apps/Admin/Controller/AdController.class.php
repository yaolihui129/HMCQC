<?php
namespace Admin\Controller;
class AdController extends CommonController {
    public function index(){
        $m=D('ad');
        $where['prodid']=$_SESSION['prodid'];

        $data=$m->where($where)->order('updateTime desc')->select();
        $this->assign('data',$data);
        
        $this -> assign("state", formselect());
    
        $this->display();
    }
    
    
    
    public function insert(){
    
        $m=D('ad');
       
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
        $m=D('ad');
        $arr=$m->find($_GET[id]);
        $this->assign('arr',$arr);
        $this -> assign("state", formselect($arr['state']));

        $this->display();
    }
    

    public function update(){
        /* 实例化模型*/
        $db=D('ad');
        $_POST['moder']=$_SESSION['realname'];
        if ($db->save($_POST)){
            $this->success("修改成功！");
        }else{
            $this->error("修改失败！");
        }
    }
    
    public function img(){
        $m=D('ad');
        $arr=$m->find($_GET[id]);
        $this->assign('arr',$arr);

        $this->display();
    }
    
    
    public function pic(){
        $upload = new \Think\Upload();// 实例化上传类
         $upload->maxSize =     7145728 ;// 设置附件上传大小
        $upload->exts     =     array('jpg', 'gif', 'png', 'jpeg');// 设置附件上传类型
        $upload->rootPath =  './Upload/'.$_SESSION['qz'].'/';// 设置附件上传目录
        $upload->savePath = '/Ad/'; // 设置附件上传目录
    
        $info  =   $upload->upload();
    
        if(!$info) {// 上传错误提示错误信息
            $this->error($upload->getError());
        }else{// 上传成功 获取上传文件信息
            $_POST['path']=$info['img']['savepath'];
            $_POST['img']=$info['img']['savename'];
            /* 实例化模型*/
            $db=D('ad');
            if ($db->save($_POST)){
                $image = new \Think\Image();
                $image->open('./Upload/'.$_SESSION['qz'].$info['img']['savepath'].$info['img']['savename']);                
                //$image->thumb(800, 400,\Think\Image::IMAGE_THUMB_SCALE)->save('./Upload/'.$info['img']['savepath'].$info['img']['savename']);  //从中央剪裁                
                $image->thumb(800, 400)->save('./Upload/'.$_SESSION['qz'].$info['img']['savepath'].$info['img']['savename']);   //等比例缩放
                $this->success("上传成功！");
            }else{
                $this->error("上传失败！");
            }
        }
    }
    

    public function del(){
        /* 接收参数*/
        $id = !empty($_POST['id']) ? $_POST['id'] : $_GET['id'];
        /* 实例化模型*/
        $m=M('ad');
        $count =$m->delete($id);
        if ($count>0) {
            $this->success('删除成功');
        }else{
            $this->error('删除失败');
        }
    }
    
}