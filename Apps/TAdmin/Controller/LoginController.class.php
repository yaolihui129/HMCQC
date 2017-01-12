<?php
namespace TAdmin\Controller;
use Think\Controller;
class LoginController extends Controller {
    public function index(){
        layout(false); // 临时关闭当前模板的布局功能
        $this->display();
    }

    public function login(){
        $user = D('user')
        //->where(array('username'=>$_POST['username'],'state'=>'在职','password'=>md5($_POST['password'])))
        ->field("id,dept,role,realname,account,usergp,phone,email,deleted,path,img")
        ->where(array('account'=>$_POST['username'],'password'=>md5($_POST['password']))) 
        ->find();
        
        if ($user){
            session('[start]');
            $_SESSION=$user;
            $_SESSION['isLogin']=1;
            $_SESSION['testgp']=$user['usergp'];
            dump($user);
            $where['userid']=$user['id'];
            $arr = D('tp_userprod')->where($where)->select();
            dump($arr);
            //判断跳转到那个后台
            $this->redirect('TAdmin/Program/index');
        }else{
            // p($user);
            $this->error('用户或密码错误，请重新登陆！', "index");
        }

    }

    public function logout(){
        $username =$_SESSION['realname'];
        $_SESSION = array();

        if (isset($_COOKIE[session_name()])) {
            setcookie(session_name(),'',time()-3600,'/');
        }
        // 销毁sesstion
        session_destroy();

        $this->success(" {$username},再见!", "index");

    }




}