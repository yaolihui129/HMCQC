<?php
namespace Admin\Controller;
class ProdserviceController extends CommonController {
    public function index(){
        $m=D('tp_cate');
        $where['prodid']=$_SESSION['prodid'];
        $arr=$m->where($where)->select();
        $this->assign('arr',$arr);
        /*实例化模型*/
        $cate=!empty($_GET['cate']) ? $_GET['cate'] : $arr['0']['id'];
        $m=D('xl_prodservice');
        $map[cate]=$cate;
        $data=$m->where($map)->select();
        $this->assign('data',$data);
//         dump($data);
        $this->assign('cate',$cate);
        /*新增*/
        $this -> assign("state", formselect());
        
        $this->display();
    }
    
    
    public function add(){
        /*实例化模型*/
        $m=D('tp_cate');
        $arr=$m->find($_GET['cate']);
        if ($arr){
            $where['pid']=$arr['pid'];             
        }else {
            $where['pid']=0;
        }
        $m=D('tp_cate');
        $where['prodid']=$_SESSION['prodid'];
        $arr=$m->where($where)->select();
        $this->assign('arr',$arr);
        //dump($arr);
        $m=D('xl_prodservice');
        $map['cate']=$arr['id'];
        $count=$m->where($map)->count()+1;
        $this->assign("c",$count);       
        $this->assign("cate",$_GET['cate']);
        $this->display();
    
    } 
    
    
    public function insert(){
    
        $m=D('xl_prodservice');
         
        $_POST['moder']=$_SESSION['realname'];
        $_POST['prodid']=$_SESSION['prodid'];
    
        if(!$m->create()){
            $this->error($m->getError());
        }
        $lastId=$m->add();
        if($lastId){
            $this->success("成功");
        }else{
            $this->error('失败');
        }
    }
    
    public function order(){
        /* 实例化模型*/
        $db = D('xl_prodservice');
        $num = 0;
        foreach($_POST['sn'] as $id => $sn) {
            $num += $db->save(array("id"=>$id, "sn"=>$sn));
        }
        if($num) {
            $this->success("排序成功!");
    
        }else{
            $this->error("排序失败...");
        }
    }
    
    public function mod(){
        $m=D('xl_prodservice');
        $arr=$m->find($_GET[id]);
        $this->assign('arr',$arr);
    
        $where['prodid']=$_SESSION['prodid'];
        $data=$m->where($where)->select();
        $this->assign('data',$data);
    
        $this->display();
    }
    
    
    public function update(){
        /* 实例化模型*/
        $db=D('xl_prodservice');
        $_POST['moder']=$_SESSION['realname'];
        if ($db->save($_POST)){
            $this->success("修改成功！");
        }else{
            $this->error("修改失败！");
        }
    }
    
    public function del(){
        /* 接收参数*/
        $id = !empty($_POST['id']) ? $_POST['id'] : $_GET['id'];
        /* 实例化模型*/
        $m=D('xl_prodservice');
        $count =$m->delete($id);
        if ($count>0) {
            $this->success('删除成功');
        }else{
            $this->error('删除失败');
        }
    
    }
    
    
    
}