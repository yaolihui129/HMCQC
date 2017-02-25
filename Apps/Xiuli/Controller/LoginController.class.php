<?php
namespace Xiuli\Controller;
use Think\Controller;
class LoginController extends Controller {

    public function qq_login(){

        $qqobj=new \Org\Util\Qqconnect();              
        $qqobj->getAuthCode(); 

    }
    
   
    public function qq_callback(){
        $qqobj=new \Org\Util\Qqconnect();       
        $result=$qqobj->getUsrInfo(); 
        dump($qqobj);
    }
    
    

    public function login(){
         $m= D('tp_customer');
         $where['phone']=$_POST['phone'];
         $where['password']=md5($_POST['password']);
         $data=$m->where($where)->field('id,phone,realname')->find();
        
        if ($data){            
            $_SESSION['userid']=$data['id'];
            $_SESSION['uphone']=$data['phone'];
            $_SESSION['realname']=$data['realname'];
            $_SESSION['isCLogin']='Xiuli';
//             $this->redirect('/Xiuli/Index');
            $this->success("登录成功!");
        }else{

            $this->error('用户或密码错误，请重新登陆！');
        }

    }

    public function logout(){
        $username =$_SESSION['realname'];
        $_SESSION = array();

        if (isset($_COOKIE[session_name()])) {
            setcookie(session_name(),'',time()-3600,'/');
        }        
        session_destroy();// 销毁sesstion

        $this->success("再见 {$username}, 退出成功!",U('/Xiuli/Index'));

    }
}