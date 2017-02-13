<?php
namespace Anshun\Controller;
use Think\Controller;
class LoginController extends Controller {

    public function login(){
         $m= D('tp_customer');
         $where['phone']=$_POST['phone'];
         $where['password']=md5($_POST['password']);
         $data=$m->where($where)->field('id,phone,realname')->find();

        
        if ($data){
            $_SESSION['Anshun']['userid']=$data['id'];
            $_SESSION['Anshun']['uphone']=$data['phone'];
            $_SESSION['realname']=$data['realname'];
            $_SESSION['isCLogin']=4;
            $this->redirect('/Anshun/Index');
        }else{

            $this->error('用户或密码错误，请重新登陆！', U('Anshun/Index'));
        }

    }

    public function logout(){
        $username =$_SESSION['realname'];
        $_SESSION = array();

        if (isset($_COOKIE[session_name()])) {
            setcookie(session_name(),'',time()-3600,'/');
        }        
        session_destroy();// 销毁sesstion

        $this->success("再见 {$username}, 退出成功!", U('Xiuli/Index'));

    }
}