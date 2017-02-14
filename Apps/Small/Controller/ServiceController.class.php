<?php
namespace Small\Controller;
use Think\Controller;
class ServiceController extends Controller {
    public function index(){

        $m=D('product');
        $data=$m->field('web,adress,desc,phone,tel,qq,url,record,path,img')->find(8);
        $_SESSION['Small']=$data;
        $_SESSION['Small']['img']=$data['path'].$data['img'];
        $_SESSION['ip']=get_client_ip();
        $_SESSION['browser']=GetBrowser();
        $_SESSION['os']=GetOs();
        
        $m=D('sl_prodservice');
        $arr=$m->find($_GET['id']);
        $this->assign('arr',$arr);      
        
        $this->display();
    }   
}