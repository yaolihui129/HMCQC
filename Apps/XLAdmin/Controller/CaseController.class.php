<?php
namespace XLAdmin\Controller;
class CaseController extends CommonController {
public function index(){
        $m=D('case');
        $arr=$m->select();
        $this->assign('data',$arr);
//     dump($arr);
        $this->display();
    }

    public  function add(){

        $m=M('case');
        $arr=$m->select();
        $this->assign('data',$arr);
        $this->assign("desc",PublicController::editor("desc",$arr['desc']));

        $this->display();

    }

    public function insert(){

        $m=D('case');
        $_POST['adder']=$_SESSION['realname'];
        $_POST['moder']=$_SESSION['realname'];
        $_POST['updateTime']=date("Y-m-d H:i:s",time());
        if(!$m->create()){
            $this->error($m->getError());
        }
        $lastId=$m->add();
        if($lastId){
            $this->success("添加成功");
        }else{
            $this->error('用户注册失败');
        }


    }

    public function mod(){
        /* 接收参数*/
        $id = !empty($_POST['id']) ? $_POST['id'] : $_GET['id'];
        /* 实例化模型*/
        $m=M('case');
        $arr=$m->select();
        $this->assign('arr',$arr);

        $data=$m->find($id);
        $this->assign('data',$data);
        $this->assign("desc",PublicController::editor("desc",$data['desc']));


        $this->display();
    }

    public function update(){
        /* 实例化模型*/

        $db=D('case');

        $_POST['moder']=$_SESSION['realname'];      
        if ($db->save($_POST)){
            $this->success("修改成功！");
        }else{
            $this->error("修改失败！");
        }
    }


    public function photob(){
        /* 接收参数*/
        $id = !empty($_POST['id']) ? $_POST['id'] : $_GET['id'];
        /* 实例化模型*/
        $m=M('case');
        $arr=$m->select();
        $this->assign('arr',$arr);

        $data=$m->find($id);
        $this->assign('data',$data);


        $this->display();
    }


    public function imageb(){
               
        $upload = new \Think\Upload();// 实例化上传类
        $upload->maxSize   =     3145728 ;// 设置附件上传大小
        $upload->exts      =     array('jpg', 'gif', 'png', 'jpeg');// 设置附件上传类型
        $upload->rootPath =  './Public/Upload/';// 设置附件上传目录
        $upload->savePath  = '/Case/before/'; // 设置附件上传目录
        $info  =   $upload->upload();
        if(!$info) {// 上传错误提示错误信息
            $this->error($upload->getError());
        }else{// 上传成功 获取上传文件信息
            /* 实例化模型*/           
            $db=D('case');
            $_POST['bpath']=$info['photob']['savepath'];
            $_POST['before']=$info['photob']['savename'];

            if ($db->save($_POST)){
                $this->success("修改成功！");
            }else{
                $this->error("修改失败！");
            }
            
        }

    }

    public function photoa(){
        /* 接收参数*/
        $id = !empty($_POST['id']) ? $_POST['id'] : $_GET['id'];
        /* 实例化模型*/
        $m=M('case');
       // $where=array("state"=>"在职");
        $arr=$m
        //->where($where)
        ->select();
        $this->assign('arr',$arr);

        $data=$m->find($id);
        $this->assign('data',$data);
// dump($data);

        $this->display();
    }


    public function imagea(){
            
        $upload = new \Think\Upload();// 实例化上传类
        $upload->maxSize   =     3145728 ;// 设置附件上传大小
        $upload->exts      =     array('jpg', 'gif', 'png', 'jpeg');// 设置附件上传类型
        $upload->rootPath =  './Public/Upload/';// 设置附件上传目录
        $upload->savePath  = '/Case/after/'; // 设置附件上传目录
        
        $info  =   $upload->upload();
        if(!$info) {// 上传错误提示错误信息
            $this->error($upload->getError());
        }else{// 上传成功 获取上传文件信息
             $_POST['apath']=$info['photoa']['savepath'];
             $_POST['after']=$info['photoa']['savename'];
             
            // dump($_POST);
             /* 实例化模型*/
             $db=D('case');
             if ($db->save($_POST)){
                 $this->success("修改成功！");
             }else{
                 $this->error("修改失败！");
             }
        }
     
    }

    public function del(){
        /* 接收参数*/
        $id = !empty($_POST['id']) ? $_POST['id'] : $_GET['id'];
        /* 实例化模型*/
        $m=M('case');

        $count =$m->delete($id);
        if ($count>0) {
            $this->success('删除成功');
        }else{
            $this->error('删除失败');
        }
    }

}