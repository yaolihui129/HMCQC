<?php
namespace Xinda\Controller;
use Think\Controller;
class AboutController extends Controller {
    public function about(){
        $m=D('product');
         $data=$m->field('web,adress,desc,phone,tel,qq,url,record,path,img')->find(6);
         $_SESSION['Xinda']=$data;         
         $_SESSION['Xinda']['img']=$data['path'].$data['img'];
         $_SESSION['Xinda']['web']=$data['web'];
         $_SESSION['ip']=get_client_ip();
         $_SESSION['browser']=GetBrowser();
         $_SESSION['os']=GetOs();
                       
        $this->display();
    }
    
    public function hr(){
    
        $m=D('product');
        $data=$m->field('web,adress,desc,phone,tel,qq,url,record,path,img')->find(6);
        $_SESSION['Xinda']=$data;
        $_SESSION['Xinda']['img']=$data['path'].$data['img'];
        $_SESSION['Xinda']['web']='北京智慧信达-招聘';
        $_SESSION['ip']=get_client_ip();
        $_SESSION['browser']=GetBrowser();
        $_SESSION['os']=GetOs();
    
        $m=D('tp_hr');
        $where['prodid']=6;
        $where['state']='招聘中';
        $data=$m->where($where)->order('sn,id')->select();
        $this->assign('data',$data);
    
        $this->display();
    }
    
   
}