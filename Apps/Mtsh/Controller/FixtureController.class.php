<?php
namespace Mtsh\Controller;
use Think\Controller;
class FixtureController extends Controller {
    public function Index(){
        $m=D('product');
        $data=$m->field('web,adress,desc,phone,tel,qq,url,record,path,img')->find(3);
        $_SESSION['Mtsh']=$data;
        $_SESSION['Mtsh']['img']=$data['path'].$data['img'];
        $_SESSION['ip']=get_client_ip();
        $_SESSION['browser']=GetBrowser();
        $_SESSION['os']=GetOs(); 


        $this->display();

    }
}