<?php
namespace Xiuli\Controller;
use Think\Controller;
class ServiceController extends Controller {
    public function index(){

       $m=D('product');
       $data=$m->field('web,adress,desc,phone,tel,qq,url,record,path,img')->find(1);
       $_SESSION['Xiuli']=$data;
       $_SESSION['Xiuli']['img']=$data['path'].$data['img'];
       
           
//            $_SESSION['web']=$data['web'];
//            $_SESSION['adress']=$data['adress'];
//            $_SESSION['desc']=$data['desc'];
//            $_SESSION['phone']=$data['phone'];
//            $_SESSION['tel']=$data['tel'];
//            $_SESSION['qq']=$data['qq'];
//            $_SESSION['weburl']=$data['url'];
//            $_SESSION['record']=$data['record'];
           $_SESSION['ip']=get_client_ip();
           $_SESSION['browser']=GetBrowser();
           $_SESSION['os']=GetOs();
//            $_SESSION['img']=$data['path'].$data['img'];
//            $_SESSION['init']=1;                               
       
        
        $m=D('xl_prodservice');
        $arr=$m->find($_GET['id']);
        $this->assign('arr',$arr);
                
        $this->display();
    }
    
    
    
}