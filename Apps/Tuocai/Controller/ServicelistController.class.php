<?php
namespace Tuocai\Controller;
use Think\Controller;
class ServicelistController extends Controller {
    public function index(){
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
            
            $where['prodid']=2;            
            $m=D('tc_cate');
            $arr=$m->where($where)->order('sn')->select();                        
            $this->assign('arr',$arr);

            $m=D('tc_prodservice');
            $map['state']='发布';
            if($_GET['cate']){
                $map['cate']=$_GET['cate'];
                
                $data=$m->where($map)
                ->field("id,mark,name,state,money,smoney,num,istj,cate,path,img,utime")
                ->order('utime desc')->select();
            }else {
                $data=$m->where($map)->field("id,mark,name,state,money,smoney,num,istj,cate,path,img,utime")
                ->order('utime desc')->limit(12)->select();
            }
                   
            $this->assign('data',$data);
                  
        $this->display();
    }
    
    
    
}