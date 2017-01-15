<?php
// 根据id获取状态
function getState($id){
    if ($id){
        $m=M('dict');
        $data=$m->find($id);
        //dump($data);
        return $data['v'];
    }else {
        return ;
    }
}

//根据id获取活动信息
function getVoucher($id){
    if ($id){
        $m=D('voucher');
        $arr=$m->find($id);
        $str=$arr['title']."：奖券【".$arr['total']."】特等奖【".$arr['specia']
        ."】，一等奖【".$arr['first']."】，二等奖【".$arr['second']
        ."】三等奖【".$arr['third']."】，参与奖【".$arr['canyu']."】";
        return $str;
    }else {
        return ;
    }

}

// 根据id获取奖券数
function countTickets($id){
    if ($id){
        $m=D('tickets');
        $where=array("voucherid"=>$id);
        $c=$m->where($where)->count();
        return $c;
    }else {
        return ;
    }

}

/**
 * 获取客户端浏览器类型
 * @param  string $glue 浏览器类型和版本号之间的连接符
 * @return string|array 传递连接符则连接浏览器类型和版本号返回字符串否则直接返回数组 false为未知浏览器类型
 */
////获得访客浏览器类型
function GetBrowser(){
    if(!empty($_SERVER['HTTP_USER_AGENT'])){
        $br = $_SERVER['HTTP_USER_AGENT'];
        if (preg_match('/MSIE/i',$br)) {
            $br = 'MSIE';
        }elseif (preg_match('/Firefox/i',$br)) {
            $br = 'Firefox';
        }elseif (preg_match('/Chrome/i',$br)) {
            $br = 'Chrome';
        }elseif (preg_match('/Safari/i',$br)) {
            $br = 'Safari';
        }elseif (preg_match('/Opera/i',$br)) {
            $br = 'Opera';
        }else {
            $br = 'Other';
        }
        return $br;
    }else{return "获取浏览器信息失败！";}
}

////获得访客浏览器语言
function GetLang(){
    if(!empty($_SERVER['HTTP_ACCEPT_LANGUAGE'])){
        $lang = $_SERVER['HTTP_ACCEPT_LANGUAGE'];
        $lang = substr($lang,0,5);
        if(preg_match("/zh-cn/i",$lang)){
            $lang = "简体中文";
        }elseif(preg_match("/zh/i",$lang)){
            $lang = "繁体中文";
        }else{
            $lang = "English";
        }
        return $lang;
    }else{return "获取浏览器语言失败！";}
}

////获取访客操作系统
function GetOs(){
    if(!empty($_SERVER['HTTP_USER_AGENT'])){
        $OS = $_SERVER['HTTP_USER_AGENT'];
        if (preg_match('/win/i',$OS)) {
            $OS = 'Windows';
        }elseif (preg_match('/mac/i',$OS)) {
            $OS = 'MAC';
        }elseif (preg_match('/linux/i',$OS)) {
            $OS = 'Linux';
        }elseif (preg_match('/unix/i',$OS)) {
            $OS = 'Unix';
        }elseif (preg_match('/bsd/i',$OS)) {
            $OS = 'BSD';
        }else {
            $OS = 'Other';
        }
        return $OS;
    }else{return "获取访客操作系统信息失败！";}
}



//根据日期获取星期
function   wk($date) {
        $datearr = explode("-",$date);     //将传来的时间使用“-”分割成数组
        $year = $datearr[0];       //获取年份
        $month = sprintf('%02d',$datearr[1]);  //获取月份
        $day = sprintf('%02d',$datearr[2]);      //获取日期
        $hour = $minute = $second = 0;   //默认时分秒均为0
        $dayofweek = mktime($hour,$minute,$second,$month,$day,$year);    //将时间转换成时间戳
        $shuchu = date("w",$dayofweek);      //获取星期值
        $weekarray=array("星期日","星期一","星期二","星期三","星期四","星期五","星期六");
        return  $weekarray[$shuchu];
    }
    
    

//根据id 获取老师信息
function getTeacher($id){
        if ($id){
            $m=M('customer');
            $where['isteacher']=1;
            $data=$m->where($where)->find($id);
            //dump($data);
            return $data['realname']."(".$data['phone'].")";
        }else {
            return ;
        }
        
}

//根据dateid 获取排课信息
function getPlan($dateid){
        $m=D('plan');
        $where['tuoc_plan.dateid']=$dateid;
        $arr=$m
        ->where($where)
        ->join('tuoc_techclass ON tuoc_plan.techclassid =tuoc_techclass.id')
        ->select();
        if($arr){
        foreach ($arr as $ar){
        $str.='<li class="list-group-item">'
                  . $ar['teacher']."老师的【".$ar['course']."】课程,上课地点：".$ar['adress']  
              .'</li>';
        };
        return $str;
        }else{
            return "暂无课程";
        }
}
    
    /*
     * 根据dateid 获取排课信息
     * */
    function countPlan($dateid){
        $m=D('plan');
        $where['dateid']=$dateid;
        $arr=$m->where($where)->count();
        return $arr;
    }
    
    /**
     * 状态选择控件
     * @param $name 控件name
     * @param $value 选中值
     */
    function formselect($value="正常",$name="state",$type="state") {
        $html = '<select name="'.$name.'" class="form-control">';
        $m =M('dict');
        $where=array("type"=>$type,"state"=>"正常");
        //获取所有分类
        $cats = $m->where($where)->order('k')->select();
        foreach($cats as $v) {
            $selected = ($v['v']==$value) ? "selected" : "";
            $html .= '<option '.$selected.' value="'.$v['v'].'">'.$v['v'].'</option>';
        }
        $html .='<select>';
        return $html;
    }  
    
// 根据id获取项目信息
    function getPro($id){
        if ($id){
            $m=M('project');
            $data=$m->find($id);
            $str=$data['code'].$data['qd']."-".$data['name']."【".$data['status']."】".$data['end'];    
            return $str;
        }else {
            return ;
        }
    }   

//根据id获取项目编号

    function getProNo($id){
        if ($id){
            $m=M('project');
            $data=$m->find($id);   
            return $data['code'];
        }else {
            return ;
        }
    }
    
    /**
     * 获取路径数
     */
    function countPath($id){
        $m=M("module");
        $where=array("branch"=>$id);
        $count=$m->where($where)->count();
        return $count;
    }
    
    /**
     * 根据id获取里程碑信息
     */
    function getStage($id){
        if ($id){
            $m=M('tp_stage');
            $data=$m->find($id);
            $str=$data['sn'].'.'.$data['stage']."【".$data['state']."】";
            return $str;
        }else {
            return ;
        }
    }