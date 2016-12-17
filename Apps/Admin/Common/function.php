<?php
/**
 * 根据id获取产品名
 */
function getProd($id){
    if ($id){
        $m=M('product');
        $data=$m->find($id);
        //dump($data);
        return $data['product'];
    }else {
        return ;
    }
}
