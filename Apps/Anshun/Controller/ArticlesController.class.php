<?php
namespace Anshun\Controller;
use Think\Controller;
class ArticlesController extends Controller {
    public function index(){
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
        
        $this->display();
    }
}