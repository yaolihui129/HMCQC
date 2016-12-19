<?php
namespace Admin\Controller;
class CourseController extends CommonController {

	public function index(){

		$m=M('tc_course');
        $data=$m->order('updateTime desc')->select();
        $this->assign('data',$data);

	     $this->display();
    }

    public function add(){
   	
        $this->assign("state", PublicController::stateSelect("正常","state","state"));
        $this->assign("coursetype", PublicController::stateSelect("学前少儿","coursetype","coursetype"));
    
        $this->display();
    }

    public function insert(){
        /* 实例化模型*/
        $m=D('tc_course');      
        $_POST['adder']=$_SESSION['realname'];
        $_POST['moder']=$_SESSION['realname'];
        $_POST['createTime']=time();
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
        $m=D('tc_course');
        $arr=$m->find($_GET[id]);
        $this->assign('arr',$arr);
        
        $this->assign("state", PublicController::stateSelect($arr['state'],"state","state"));
        $this->assign("coursetype", PublicController::stateSelect($arr['coursetype'],"coursetype","coursetype"));

        $this->display();
    }

    public function update(){
        /* 实例化模型*/
        
        $db=D('tc_course');
        $_POST['moder']=$_SESSION['realname'];
        if ($db->save($_POST)){
            $this->success("修改成功！");
        }else{
            $this->error("修改失败！");
        }
    }
    

    public function search(){
        /* 接收参数*/
        $search=$_POST['search'];
        $map['course|coursetype']=array('like','%'.$search.'%'); 
        /* 实例化模型*/
        $m=M('tc_course');      
        $arr=$m->where($map)->order("updateTime desc")->select();
        $this->assign('data',$arr);
        $where=array("search"=>$search);
        $this->assign('w',$where);
         
        $this->display('index');
         
    }
    
    
    public function photo(){
        $m=D('tc_course');
        $arr=$m->find($_GET[id]);
        $this->assign('arr',$arr); 
            
        $this->display();
    }
    
    
    public function img(){
        $upload = new \Think\Upload();// 实例化上传类
        $upload->maxSize   =     7145728 ;// 设置附件上传大小
        $upload->exts      =     array('jpg', 'gif', 'png', 'jpeg');// 设置附件上传类型
        $upload->rootPath =  './Upload/'.$_SESSION['qz'];// 设置附件上传目录
        $upload->savePath  = '/Course/'; // 设置附件上传目录
    
        $info  =   $upload->upload();
        // dump($info);
        if(!$info) {// 上传错误提示错误信息
            $this->error($upload->getError());
        }else{// 上传成功 获取上传文件信息
            $_POST['path']=$info['img']['savepath'];
            $_POST['img']=$info['img']['savename'];
            /* 实例化模型*/
            $db=D('tc_course');
            if ($db->save($_POST)){
                $image = new \Think\Image();
                $image->open('./Upload/'.$_SESSION['qz'].$info['img']['savepath'].$info['img']['savename']);
                //中央剪裁
                //$image->thumb(245, 160,\Think\Image::IMAGE_THUMB_CENTER)->save('./Public/Upload/'.$info['img']['savepath'].'/thumb_'.$info['img']['savename']);
                //缩略图
                $image->thumb(245, 160)->save('./Upload/'.$_SESSION['qz'].$info['img']['savepath'].$info['img']['savename']);   //等比例缩放
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
        $m=M('tc_course');
        $count =$m->delete($id);
        if ($count>0) {
            $this->success('删除成功');
        }else{
            $this->error('删除失败');
        }
    }




}