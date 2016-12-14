<?php
namespace Anshun\Controller;
use Think\Controller;
class PaintController extends Controller {
     public function index(){
         $m=D('setting');
         $data=$m->find(1);
         $_SESSION['phone']=$data['phone'];
         $_SESSION['qq']=$data['qq'];
         $_SESSION['ip']=get_client_ip();
         
         $this->display();
    }
    
    
    public function banj(){
        $m=D('setting');
        $data=$m->find(1);
        $_SESSION['phone']=$data['phone'];
        $_SESSION['qq']=$data['qq'];
        $_SESSION['ip']=get_client_ip();
        
        $this->display();
    }
    
    public function weix(){
        $m=D('setting');
        $data=$m->find(1);
        $_SESSION['phone']=$data['phone'];
        $_SESSION['qq']=$data['qq'];
        $_SESSION['ip']=get_client_ip();
        
        $this->display();
    }
    
    
    public function sbaoy(){
        $m=D('setting');
        $data=$m->find(1);
        $_SESSION['phone']=$data['phone'];
        $_SESSION['qq']=$data['qq'];
        $_SESSION['ip']=get_client_ip();
        
        $this->display();
    }
    
    public function bbaoy(){
        $m=D('setting');
        $data=$m->find(1);
        $_SESSION['phone']=$data['phone'];
        $_SESSION['qq']=$data['qq'];
        $_SESSION['ip']=get_client_ip();
        
        $this->display();
    }
}