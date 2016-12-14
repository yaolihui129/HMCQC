<?php
namespace Test\Controller;
use Think\Controller;
class AboutController extends Controller {
    public function index(){
        
        $where=array("prodid"=>2);
        /* 实例化模型*/
        $m=M('program');
        $data=$m->where($where)->order("end desc")->select();
        $this->assign('data',$data);
        
        $m=M('dict');
        $where=array("type"=>"testgp","state"=>"正常");
        $arr=$m->where($where)->select();
        $this->assign('arr',$arr);

        $this->display();
    }

   


}