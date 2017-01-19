<?php
namespace Anshun\Controller;
use Think\Controller;
class UsecarController extends Controller {
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

        $m=D('dict');
        $where=array("type"=>"usecar","state"=>"正常");
        $data=$m->where($where)->order('k')->select();
        $this->assign('data',$data);

        $m=D('tp_usecar');
        $type=!empty($_GET['type']) ? $_GET['type'] : 6;
        $where=array("type"=>$type);
        $arr=$m->where($where)->order('utime desc')->select();
        $this->assign('arr',$arr);
        $this->assign('w',$where);

        $this->display();
    }




}