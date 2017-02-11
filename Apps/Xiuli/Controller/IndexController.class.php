<?php
namespace Xiuli\Controller;
use Think\Controller;
class IndexController extends Controller {
    public function index(){
           
        $m=D('product');
        $data=$m->field('web,adress,desc,phone,tel,qq,url,record,path,img')->find(1);
        $_SESSION['Xiuli']=$data;
        $_SESSION['Xiuli']['img']=$data['path'].$data['img'];


//         $_SESSION['web']=$data['web'];
//         $_SESSION['adress']=$data['adress'];
//         $_SESSION['desc']=$data['desc'];
//         $_SESSION['phone']=$data['phone'];
//         $_SESSION['tel']=$data['tel'];
//         $_SESSION['qq']=$data['qq'];
//         $_SESSION['weburl']=$data['url'];
//         $_SESSION['record']=$data['record'];                
//         $_SESSION['img']=$data['path'].$data['img'];
//         $_SESSION['init']=1;                      
          
        $_SESSION['ip']=get_client_ip();
        $_SESSION['browser']=GetBrowser();
        $_SESSION['os']=GetOs();           
                
        $m=D('tp_ad');
        $where['prodid']=1;
        $pic=$m->where($where)->order('utime desc')->select();
        $this->assign('pic',$pic);
        
        $m=D('xl_prodservice');
        //推荐服务
        $map['istj']=1;
        $map['state']='发布';
        $data=$m->where($map)
                ->field("id,mark,name,state,money,smoney,num,istj,cate,path,img,utime")
                ->order('utime desc')
                ->select();
        $this->assign('data',$data);
        
        //发光字
        $where['cate']=34;
        $where['state']='发布';
        $data=$m->where($where)
        ->field("id,mark,name,state,money,smoney,num,istj,cate,path,img,utime")
        ->order('sn,id')
        ->select();
        $this->assign('data1',$data);
//         dump($where);
        //文印
        $where['cate']=18;
        $data=$m->where($where)
        ->field("id,mark,name,state,money,smoney,num,istj,cate,path,img,utime")
        ->order('sn,id')
        ->select();
        $this->assign('data2',$data);
        //微网站
        $where['cate']=5;
        $data=$m->where($where)
        ->field("id,mark,name,state,money,smoney,num,istj,cate,path,img,utime")
        ->order('sn,id')
        ->select();
        $this->assign('data3',$data);
        //公众号
        $where['cate']=6;
        $data=$m->where($where)
        ->field("id,mark,name,state,money,smoney,num,istj,cate,path,img,utime")
        ->order('sn,id')
        ->select();
        $this->assign('data5',$data);
        
        
        
     
        $this->display();
        
        
    }
}