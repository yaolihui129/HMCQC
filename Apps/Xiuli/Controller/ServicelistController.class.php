<?php
namespace Xiuli\Controller;
use Think\Controller;
class ServicelistController extends Controller {
    public function index(){

        $m=D('product');
        $data=$m->field('web,adress,desc,phone,tel,qq,url,record,path,img')->find(1);
        $_SESSION['Xiuli']=$data;
        $_SESSION['Xiuli']['img']=$data['path'].$data['img'];
                
//                 $_SESSION['web']=$data['web'];
//                 $_SESSION['adress']=$data['adress'];
//                 $_SESSION['desc']=$data['desc'];
//                 $_SESSION['phone']=$data['phone'];
//                 $_SESSION['tel']=$data['tel'];
//                 $_SESSION['qq']=$data['qq'];
//                 $_SESSION['db']=$data['db'];
//                 $_SESSION['weburl']=$data['url'];
//                 $_SESSION['record']=$data['record'];
                $_SESSION['ip']=get_client_ip();
                $_SESSION['browser']=GetBrowser();
                $_SESSION['os']=GetOs();
//                 $_SESSION['img']=$data['path'].$data['img'];
//                 $_SESSION['init']=1;                              

            $where['prodid']=1;
            $where['state']='正常';
            $m=D('xl_cate');
            $arr=$m->where($where)->order('sn')->select();                        
            $this->assign('arr',$arr);

            $m=D('xl_prodservice');
            $map['state']='发布';
            if($_GET['cate']){
                $map['cate']=$_GET['cate'];               
                $data=$m->where($map)
                ->field("id,mark,name,state,money,smoney,num,istj,cate,path,img,utime")
                ->order('sn,id')->select();
            }else {
                $map['istj']=1;
                $data=$m->where($map)->field("id,mark,name,state,money,smoney,num,istj,cate,path,img,utime")
                ->order('utime desc')->select();
            }
                   
            $this->assign('data',$data);
            $this->assign('cate',$_GET['cate']);
                  
        $this->display();
    }
    
    
    
}