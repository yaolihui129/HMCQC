<?php
namespace Xiuli\Controller;
use Think\Controller;
class VoucherController extends Controller {
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
//                 $_SESSION['weburl']=$data['url'];
//                 $_SESSION['record']=$data['record'];
                $_SESSION['ip']=get_client_ip();
                $_SESSION['browser']=GetBrowser();
                $_SESSION['os']=GetOs();
//                 $_SESSION['img']=$data['path'].$data['img'];
//                 $_SESSION['init']=1;                
          
        $m=D('xl_voucher');
        $where=array("state"=>"发布");
        $arr=$m->where($where)->order('end desc')->select();
        $this->assign('arr',$arr);

        $id=!empty($_GET['id']) ? $_GET['id'] : $arr[0]['id'];
        $data=$m->where($where)->find($id);
        $this->assign('data',$data);



        $this->display();
    }

    public function choujiang(){

        $m=D('xl_tickets');
        $where=array("voucherid"=>$_GET['id']);
        $arr=$m->where($where)->field("id")->select();
        $count=$m->where($where)->count();
        $d=rand(0,$count-1);
        $set['id']=$arr[$d]['id'];
        echo  $set['id'].';';
        $_SESSION['ticketsid']=$set['id'];
        $set[ip]=$_SESSION['ip'];
        $set['moder']='客户';
        $set['state']='抽奖';
        $set['chouj']=1;
        $isSet=$m->save($set);
        if ($isSet){
            $this->redirect('/Xiuli/Voucher/tickets');
        }else{
            $this->error("失败！");
        }


    }
}