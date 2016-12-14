<?php
namespace Anshun\Controller;
use Think\Controller;
class UsecarController extends Controller {
    public function index(){
        $m=D('setting');
        $data=$m->find(1);
        $_SESSION['phone']=$data['phone'];
        $_SESSION['qq']=$data['qq'];
        $_SESSION['ip']=get_client_ip();

        $m=D('dict');
        $where=array("type"=>"usecar","state"=>"正常");
        $data=$m->where($where)->order('k')->select();
        $this->assign('data',$data);

        $m=D('usecar');
        $type=!empty($_GET['type']) ? $_GET['type'] : 6;
        $where=array("type"=>$type);
        $arr=$m->where($where)->order('updatetime desc')->select();
        $this->assign('arr',$arr);
//         dump($arr);
        $this->assign('w',$where);

        $this->display();
    }




}