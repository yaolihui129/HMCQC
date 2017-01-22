<?php

//根据id获取产品名
function getProd($id){
    if ($id){
        $m=M('product');
        $data=$m->find($id);
        //dump($data);
        return $data['name'];
    }else {
        return ;
    }
}

//根据pid获取分类数
function countCate($pid){
    if($pid){
        $m=M('tp_cate');
        $where['pid']=$pid;
        $data=$m->where($where)->count();
        return $data;      
    }else{
        return ;
    }
    
}


//根据id获取产品数数
function countProdService($cate){

}
