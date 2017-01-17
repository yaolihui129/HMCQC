<?php
namespace Tuocai\Controller;
use Think\Controller;
class CustomerController extends Controller {

	public function index(){
	   if(!($_SESSION['init'])){
             $m=D('product');
             $data=$m->find(2);
             $_SESSION['web']=$data['web'];
             $_SESSION['adress']=$data['adress'];
             $_SESSION['desc']=$data['desc'];
             $_SESSION['phone']=$data['phone'];
             $_SESSION['qq']=$data['qq'];
             $_SESSION['weburl']=$data['url'];
             $_SESSION['ip']=get_client_ip();
             $_SESSION['browser']=GetBrowser();
             $_SESSION['os']=GetOs();
             $_SESSION['img']=$data['path'].$data['img'];
             $_SESSION['init']=1;
        }   

        $where['isteacher'] = !empty($_GET['isteacher']) ? $_GET['isteacher'] : 1;
        $where['state']="发布";
		$m=M('tc_customer');
        $data=$m->where($where)->order('updateTime desc')->select();
        $this->assign('data',$data);
        $this->assign('w',$where);       
	    $this->display();
    }

   
 public function setpass(){
        /* 接收参数*/
        $id =  $_SESSION['id'];
        /* 实例化模型*/
        $m=M('tc_customer');        
        $user=$m->find($id);
        $this->assign('user',$user);

        $this->display();
    }

 public function set(){
       /* 接收参数*/
       $id = !empty($_POST['id']) ? $_POST['id'] : $_GET['id'];
       $pass1= $_POST['pass1'];
       $pass2= $_POST['pass2'];
       $pass3= $_POST['pass3'];
       /* 实例化模型*/
        $m=M('tc_customer');
        
        $user=$m->find($id);
        if (md5($pass1)==$user['password']) {
            if ($pass2==$pass3) {
                $arr['id']=$id;
                $arr['password']=md5($pass2);
                $arr['moder']=$_SESSION['realname'];
                if ($m->save($arr)){
                        $this->success("密码修改成功！",U('Tuocai/Index/index'));
                }else{
                        $this->error("密码修改失败！");
                }

            }else{
                $this->error('新密码和确认面不一致');
            }
        }else{
            $this->error('原密码错误');
        }


 }


public function personal(){
       /* 接收参数*/
        $id =  $_SESSION['id'];
        /* 实例化模型*/
        $m=M('tc_customer');       
        $user=$m->find($id);
        $this->assign('user',$user);

        $this->display();
    }


}
 


