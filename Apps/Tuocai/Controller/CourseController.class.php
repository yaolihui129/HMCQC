<?php
namespace Tuocai\Controller;
use Think\Controller;
class CourseController extends Controller {

	public function index(){
	   if(!($_SESSION['init'])){
             $m=D('product');
             $data=$m->find(2);
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

        $where =  array("type"=>"coursetype","state"=>"正常");
		$m=M('dict');
        $arr=$m->where($where)->field('id,k,v',false)->order('k')->select();
        $this->assign('arr',$arr);

        $where['coursetype'] = !empty($_GET['coursetype']) ? $_GET['coursetype'] : "学前少儿";
        $where['state']="发布";
		$m=M('tc_course');
        $data=$m->where($where)->select();
        $this->assign('data',$data);
        $this->assign('w',$where);

        
	     $this->display();
    }

    public function mycourse(){
        
        if ($_SESSION['isteacher']==1){
            $where['tp_tc_techclass.teacherid']=$_SESSION['id'];
            //查询老师的课程表
            $m=D('tc_techclass');
            $arr=$m->where($where)
            ->join('tp_tc_plan ON tp_tc_plan.techclassid=tp_tc_techclass.id ')
            ->order('tp_tc_plan.skdate,tp_tc_plan.sktime')
            ->select();
            
            $this->assign('arr',$arr);
        }else {
            //查询学生的课程表
            $m=D('tc_studentcla');
            $where['tp_tc_studentcla.studentid']=$_SESSION['id'];
            $start=date("Y-m-d",time()-7*24*3600);
            $end=date("Y-m-d",time()+7*24*3600);
            $where['tp_tc_plan.skdate']  = array('between','$start,$end');
            $arr=$m->where($where)
            ->join('tp_tc_techclass ON tp_tc_techclass.id=tp_tc_studentcla.techclassid')
            ->join('tp_tc_plan ON tp_tc_plan.techclassid=tp_tc_techclass.id')
            ->order('tp_tc_plan.skdate,tp_tc_plan.sktime')
            ->select();
            
            $this->assign('arr',$arr);
        }
        
               
        $this->display();

    }

  
  



}