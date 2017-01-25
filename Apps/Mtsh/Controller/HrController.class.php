<?php
namespace Mtsh\Controller;
use Think\Controller;
class HrController extends Controller {
    public function index(){
        if(!($_SESSION['init'])){
            $m=D('product');
            $data=$m->find(3);
            $_SESSION['web']=$data['web'];
            $_SESSION['adress']=$data['adress'];
            $_SESSION['desc']=$data['desc'];
            $_SESSION['phone']=$data['phone'];
            $_SESSION['tel']=$data['tel'];
            $_SESSION['qq']=$data['qq'];
            $_SESSION['weburl']=$data['url'];
            $_SESSION['record']=$data['record'];
            $_SESSION['ip']=get_client_ip();
            $_SESSION['browser']=GetBrowser();
            $_SESSION['os']=GetOs();
            $_SESSION['img']=$data['path'].$data['img'];
            $_SESSION['init']=1;
        }
        
        $m=D('tp_hr');
        $data=$m->select();
        $this->assign('data',$data);
//         dump($data);
        $this->display();
        
    }
    
    public function signup(){
        
        $m=D('tp_hr');
        $arr=$m->find($_GET['id']);
        $this->assign('arr',$arr);
//         dump($arr);
        $this->display();
    }
    
    
    public function create(){
        $map['phone']=array('like','%'.$_POST['phone'].'%');
        $m=M('tp_admin');
        $arr=$m->where($map)->find();
        if($arr){
           $this->success("有"); 
        }else{
            $this->success("无");
        }        
    }
    
    public function add(){
        
        $this->display();
    }
    
    public function insert(){
        $m=D('tp_hr');
        $_POST['prodid']="3";
        $_POST['moder']=$_SESSION['realname'];       
        
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
    
}