<?php
namespace Anshun\Controller;
use Think\Controller;
class AboutController extends Controller {
public function about(){
       
       $m=D('product');
       $data=$m->find(4);
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
       
       
       $this->display();
    }
           
    public function hr(){
    if(!($_SESSION['init'])){
             $m=D('product');
             $data=$m->find(4);
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
       
        $m=M('hr');
        $where=array("state"=>"发布");
        $arr=$m->where($where)->select();
        $this->assign('data',$arr);
       
        $this->display();
    }
  
    public function tech(){
        if(!($_SESSION['init'])){
             $m=D('product');
             $data=$m->find(4);
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
        
        $m=M('admin');
        $where=array("tech"=>"技师");
        $data=$m->where($where)->select();
        $this->assign('data',$data);
              
        $this->display();
    }
}