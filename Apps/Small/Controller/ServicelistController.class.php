<?php
namespace Small\Controller;
use Think\Controller;
class ServicelistController extends Controller {
    public function index(){

        if(!($_SESSION['init'])){
                $m=D('product');
                $data=$m->find(8);                
                $_SESSION['web']=$data['web'];
                $_SESSION['adress']=$data['adress'];
                $_SESSION['desc']=$data['desc'];
                $_SESSION['phone']=$data['phone'];
                $_SESSION['tel']=$data['tel'];
                $_SESSION['qq']=$data['qq'];
                $_SESSION['db']=$data['db'];
                $_SESSION['weburl']=$data['url'];
                $_SESSION['record']=$data['record'];
                $_SESSION['ip']=get_client_ip();
                $_SESSION['browser']=GetBrowser();
                $_SESSION['os']=GetOs();
                $_SESSION['img']=$data['path'].$data['img'];
                $_SESSION['init']=1;                              
            }
            
            $where['prodid']=1;
            $where['state']='正常';
            $m=D('sl_cate');
            $arr=$m->where($where)->order('sn')->select();                        
            $this->assign('arr',$arr);

            $m=D('sl_prodservice');
            if($_GET['cate']){
                $map['cate']=$_GET['cate'];
                $map['state']='发布';
                $data=$m->where($map)
                ->field("id,mark,name,state,money,smoney,num,istj,cate,path,img,utime")
                ->order('utime desc')->select();
            }else {
                $data=$m->field("id,mark,name,state,money,smoney,num,istj,cate,path,img,utime")
                ->order('utime desc')->limit(12)->select();
            }
                   
            $this->assign('data',$data);
                  
        $this->display();
    }
    
    
    
}