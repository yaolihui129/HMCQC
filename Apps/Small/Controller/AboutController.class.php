<?php
namespace Small\Controller;
use Think\Controller;
class AboutController extends Controller {
    public function About(){

        $m=D('product');
        $data=$m->field('web,adress,desc,phone,tel,qq,url,record,path,img')->find(8);
        $_SESSION['Small']=$data;
        $_SESSION['Small']['img']=$data['path'].$data['img'];
        $_SESSION['ip']=get_client_ip();
        $_SESSION['browser']=GetBrowser();
        $_SESSION['os']=GetOs(); 
         
        $this->display();
    }
    
    public function Hr(){
        
        $m=D('product');
        $data=$m->field('web,adress,desc,phone,tel,qq,url,record,path,img')->find(8);
        $_SESSION['Small']=$data;
        $_SESSION['Small']['img']=$data['path'].$data['img'];
        $_SESSION['ip']=get_client_ip();
        $_SESSION['browser']=GetBrowser();
        $_SESSION['os']=GetOs();
       
        $_SESSION['web']='临城秀丽广告-招聘';
        
        
        $m=D('tp_hr');
        $where['prodid']=8;
        $where['state']='招聘中';
        $data=$m->where($where)->order('sn,id')->select();
        $this->assign('data',$data);               
        
        $this->display();
    }       
    
}