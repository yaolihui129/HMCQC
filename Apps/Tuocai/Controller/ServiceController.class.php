<?php
namespace Tuocai\Controller;
use Think\Controller;
class ServiceController extends Controller {
    public function Index(){

        if(!($_SESSION['init'])){
           $m=D('product');
           $data=$m->find(2);
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
        
        $m=D('tc_prodservice');
        $arr=$m->find($_GET['id']);
        $this->assign('arr',$arr);
                
        $this->display();
    }
    
    
    
}