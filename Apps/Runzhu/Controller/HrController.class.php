<?php
namespace Runzhu\Controller;
use Think\Controller;
class HrController extends Controller {
    public function index(){
        $m=D('product');
        $data=$m->field('web,adress,desc,phone,tel,qq,url,record,path,img')->find(7);
        $_SESSION['Runzhu']=$data;
        $_SESSION['Runzhu']['img']=$data['path'].$data['img'];
        $_SESSION['ip']=get_client_ip();
        $_SESSION['browser']=GetBrowser();
        $_SESSION['os']=GetOs(); 
        
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