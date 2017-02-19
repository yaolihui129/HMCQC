<?php
namespace Xiuli\Controller;
use Think\Controller;
class AboutController extends Controller {
    public function about(){

         $m=D('product');
         $data=$m->field('web,adress,desc,phone,tel,qq,url,record,path,img')->find(1);
         $_SESSION['Xiuli']=$data;
         $_SESSION['Xiuli']['img']=$data['path'].$data['img'];
         $_SESSION['ip']=get_client_ip();
         $_SESSION['browser']=GetBrowser();
         $_SESSION['os']=GetOs();
        
        $this->display();
    }
    
    public function hr(){
        
        $m=D('product');
        $data=$m->field('web,adress,phone,tel,qq,url,record,path,img')->find(1);
        $_SESSION['Xiuli']=$data;
        $_SESSION['Xiuli']['img']=$data['path'].$data['img'];
        $_SESSION['Xiuli']['web']='临城秀丽广告-招聘';
        $_SESSION['ip']=get_client_ip();
        $_SESSION['browser']=GetBrowser();
        $_SESSION['os']=GetOs();
        
        $m=D('tp_hr');
        $where['prodid']=1;
        $where['istuij']=0;
        $where['state']='招聘中';
        $data=$m->where($where)->order('sn,id')->select();
        $this->assign('data',$data);
        
        $this->display();
    }
    
    public function tuijhr(){
    
        $m=D('product');
        $data=$m->field('web,adress,phone,tel,qq,url,record,path,img')->find(1);
        $_SESSION['Xiuli']=$data;
        $_SESSION['Xiuli']['img']=$data['path'].$data['img'];
        $_SESSION['Xiuli']['web']='临城秀丽广告-招聘';
        $_SESSION['ip']=get_client_ip();
        $_SESSION['browser']=GetBrowser();
        $_SESSION['os']=GetOs();
    
        $m=D('tp_hr');
        $where['prodid']=1;
        $where['istuij']=1;
        $where['state']='招聘中';
        $data=$m->where($where)->order('sn,id')->select();
        $this->assign('data',$data);
    
        $this->display();
    }
    
   public  function baom(){
       $m=D('product');
       $data=$m->field('web,adress,phone,tel,qq,url,record,path,img')->find(1);
       $_SESSION['Xiuli']=$data;
       $_SESSION['Xiuli']['img']=$data['path'].$data['img'];
       $_SESSION['Xiuli']['web']='临城秀丽广告-招聘';
       $_SESSION['ip']=get_client_ip();
       $_SESSION['browser']=GetBrowser();
       $_SESSION['os']=GetOs();
       
       
       $m=D('tp_hr');
       $arr=$m->find($_GET['id']);
       $this->assign('arr',$arr);
//        dump($arr);
       $this->display();
       
   }
    
    public function tuij(){
        $m=D('product');
        $data=$m->field('web,adress,phone,tel,qq,url,record,path,img')->find(1);
        $_SESSION['Xiuli']=$data;
        $_SESSION['Xiuli']['img']=$data['path'].$data['img'];
        $_SESSION['Xiuli']['web']='临城秀丽广告-招聘';
        $_SESSION['ip']=get_client_ip();
        $_SESSION['browser']=GetBrowser();
        $_SESSION['os']=GetOs();
        
        $m=D('tp_hr');
        $arr=$m->find($_GET['id']);
        $this->assign('arr',$arr);
//         dump($_SESSION);
        $this->display();
        
    }
    
    public function insert(){
        $m=D('tp_applicant');
        $_POST['state']='报名';
        $where['phone']=$_POST['phone'];
        $where['hrid']=$_POST['hrid'];
        $date=$m->where($where)->select();     
        if($date){            
            $this->error("对不起！这个职位".$_POST['phone']."已经报过名了。");
        }else {
            $map['tuij']=$_POST['tuij'];
            $map['hrid']=$_POST['hrid'];
            $c=$m->where($map)->count();
            if($c >=15){
                $this->error("对不起！这个职位您已经推荐超过15人了，留些机会给其他人吧");
            }else{
                if(!$m->create()){
                    $this->error($m->getError());
                }
                $lastId=$m->add();
                if($lastId){
                    $this->success("报名成功");
                }else{
                    $this->error("报名失败");
                } 
            }                        
        }
        
    }
    
}