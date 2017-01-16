<?php
/**
 * 项目选择
 * @param $value 选中值
 */
function proselect($value=1,$name=prono) {
    $html = '<select name="'.$name.'" class="form-control">';
    $m =M('project');
    $where=array("testgp"=>$_SESSION['testgp']);
    //获取所有分类
    $cats = $m->where($where)->order("end desc")->select();
    foreach($cats as $v) {
        $selected = ($v['id']==$value) ? "selected" : "";
        $html .= '<option '.$selected.' value="'.$v['id'].'">'.$v['prono'].'</option>';
    }
    $html .='<select>';
    return $html;
}

/**
 * 根据id获取列队信息
 */
function getSTester($id){
    if ($id){
        $m=M('tp_stagetester');
        $data=$m->find($id);
        $str=$data['stage']."【".$data['state']."】";
        return $str;
    }else {
        return ;
    }
}

/**
 * 根据id获取场景信息
 */
function getScene($id){
    if ($id){
        $m=M('tp_scene');
        $data=$m->find($id);
        $str=$data['sn'].$data['swho']."-".$data['swhen']."-".$data['scene'];
        return $str;
    }else {
        return ;
    }
}



/**
 * 根据id获取功能名
 */
function getFunc($id){
    if ($id){
        $m=M('tp_func');
        $data=$m->find($id);
        return $data['func'];
    }else {
        return ;
    }
}

/**
 * 根据pathid获取功能列表
 */
function getFunces($pathid){
    $where['pathid']=$pathid;
    
        $m=M('tp_func');
        $arr=$m->where($where)->select();
        foreach ($arr as $ar){
        $str.='<li class="list-group-item"><b>'
                . $ar['sn']."</b>-".$ar['func']."【".$ar['state']."】<span class='badge'>".getProNo($ar['fproid'])         
                .'</span></li>';
            }
        if ($arr){
            return $str;
        }else {
            return '无功能点';
        }
}

/**
 * 根据id获取功能失败数
 */
function countFResult($id){
    if ($id){
        $where=array("proid"=>$_SESSION['proid'],"zt_tp_exefunc.funcid"=>$id,"zt_tp_exefunc.result"=>'失败');
        $m=M('tp_stage');
        $data=$m ->where($where)
        ->join('zt_tp_stagetester ON zt_tp_stage.id =zt_tp_stagetester.stageid')
        ->join('zt_tp_exescene ON zt_tp_stagetester.id=zt_tp_exescene.stagetesterid')
        ->join('zt_tp_exefunc ON zt_tp_exescene.id=zt_tp_exefunc.exesceneid')
        ->count();
        return $data;
    }else {
        return ;
    }
}

/**
 * 根据id获取功能被测试数
 */
function countFQResult($id){
    if ($id){
        $where=array("proid"=>$_SESSION['proid'],"zt_tp_exefunc.funcid"=>$id);
        $m=M('tp_stage');
        $data=$m ->where($where)
        ->join('zt_tp_stagetester ON zt_tp_stage.id =zt_tp_stagetester.stageid')
        ->join('zt_tp_exescene ON zt_tp_stagetester.id=zt_tp_exescene.stagetesterid')
        ->join('zt_tp_exefunc ON zt_tp_exescene.id=zt_tp_exefunc.exesceneid')
        ->count();
        return $data;
    }else {
        return ;
    }
}


/**
 * 根据id获取功能结果
 */
function getFResult($id){
    if ($id){
        $m=M('tp_func');
        $data=$m->find($id);
        return $data['result'];
    }else {
        return ;
    }
}

/**
 * 根据功能id获取功能信息
 */
function getSPFunc($id){
    if ($id){
        $s = D("system");
        $where=array("tp_func.id"=>$id);
        $data=$s->join('inner JOIN tp_path ON tp_system.id = tp_path.sysid')
        ->join(' inner JOIN tp_func ON tp_path.id = tp_func.pathid')
        ->where($where)
        ->select();

        $str=$data[0]['system'].">".$data[0]['path'].">".$data[0]['func'];
        return $str;
    }else {
        return ;
    }
}


/**
 * 根据路径id获取功能信息
 */
function getSPath($id){
    if ($id){
        $s = D("system");
        $where=array("tp_path.id"=>$id);
        $data=$s->join('inner JOIN tp_path ON tp_system.id = tp_path.sysid')
        ->where($where)
        ->select();

        $str=$data[0]['system']."-".$data[0]['path'];
        return $str;
    }else {
        return ;
    }
}

/**
 * 根据场景功能id获取场景功能信息
 */
function getSceneFunc($id){
    if ($id){
        $m=D('system');
        $where=array("tp_scenefunc.id"=>$id);
        $data=$m
        ->join("inner JOIN tp_path ON tp_system.id = tp_path.sysid")
        ->join("inner JOIN tp_func ON tp_path.id = tp_func.pathid")
        ->join("inner JOIN tp_scenefunc ON tp_func.id = tp_scenefunc.funcid")
        ->where($where)->order('tp_scenefunc.sn')->select();

        $str=$data[0]['system'].">".$data[0]['path'].">".$data[0]['func']."【".$data[0]['remarks']."】";
        return $str;
    }else {
        return ;
    }

}


/**
 * 根据列队获取执行功能数
 */
function countExeFunc($id){
    $m=M("tp_exefunc");
    $where=array("exesceneid"=>$id);
    $count=$m->where($where)->count();
    return $count;
}


/**
 * 根据执行场景功能id获取执行场景功能信息
 */
function getESceneFunc($id){

    $m=D('tp_exefunc');
    $where['exesceneid']=$id;
    $arr=$m->where($where)->order('sn,id')->select();
    foreach ($arr as $ar){
        $str.='<li class="list-group-item">'
            .$ar['sn'].".".$ar['func'].":".$ar['remarks']."<br>"
            ."<b>意图：</b>".$ar['casemain']."，<b>预期：</b>".$ar['caseexpected']."，"
            .$ar['remark'].'<span class="badge">'.$ar['result'].'</span><br>'
            .$ar['updatetime']
                .'</li>';
    }
    return $str;
}


/**
 * 根据项目获取里程碑数
 */
function countStage($id){
    $m=M("tp_stage");
    $where=array("proid"=>$id);
    $count=$m->where($where)->count();
    return $count;
}
/**
 * 根据项目获取风险数
 */
function countRisk($id){
    $m=M("tp_risk");
    $where=array("proid"=>$id);
    $count=$m->where($where)->count();
    return $count;
}

/**
 * 根据项目获取系统数
 */
function countProsys($id){
    $m=M("tp_prosys");
    $where=array("proid"=>$id);
    $count=$m->where($where)->count();
    return $count;
}


/**
 * 根据id获取场景数
 */
function countScene($id){
    $m=M("tp_scene");
    $where=array("proid"=>$id);
    $count=$m->where($where)->count();
    return $count;
}

/**
 * 根据id获取场景功能数
 */
function countSFunc($id){
    $m=M("tp_scenefunc");
    $where=array("sceneid"=>$id);
    $count=$m->where($where)->count();
    return $count;
}

/**
 * 根据项目获取用例数
 */
function countCase($id){
    $m=M("tp_case");
    $where=array("fproid"=>$id);
    $count=$m->where($where)->count();
    return $count;
}

/**
 * 根据阶段id获取测试人员
 */
function countATester($id){
    $m=M("tp_stagetester");
    $where=array("stageid"=>$id,"type"=>"A");
    $count=$m->where($where)->count();
    return $count;
}

function countCTester($id){
    $m=M("tp_stagetester");
    $where=array("stageid"=>$id,"type"=>"C");
    $count=$m->where($where)->count();
    return $count;
}


function countMTester($id){
    $m=M("tp_stagetester");
    $where=array("stageid"=>$id,"type"=>"M");
    $count=$m->where($where)->count();
    return $count;
}

/**
 * 根据分组获取项目数
 */
function countPro($testgp){
    $m=M("project");
    $where=array("testgp"=>$testgp);
    $count=$m->where($where)->count();
    return $count;
}


/**
 * 根据路径获取功能数
 */
function countFunc($id){
    $m=M("tp_func");
    $where=array("pathid"=>$id);
    $count=$m->where($where)->count();
    return $count;
}

/**
 * 根据产品获取系统数
 */
function countSys($id){
    $m=M("system");
    $where=array("prodid"=>$id);
    $count=$m->where($where)->count();
    return $count;
}

/**
 * 根据功能获取路径数
 */
function countFCase($id){
    $m=M("tp_case");
    $where=array("funcid"=>$id);
    $count=$m->where($where)->count();
    return $count;
}


/**
 * 根据功能获取规则数
 */
function countFRules($id){
    $m=M("tp_rules");
    $where=array("funcid"=>$id);
    $count=$m->where($where)->count();
    return $count;
}


/**
 * 执行场景数
 */
function countExescene($id){
    $m=M("tp_exescene");
    $where=array("stagetesterid"=>$id);
    $count=$m->where($where)->count();
    return $count;
}


/**
 * 手工执行场景数
 */
function countMExescene($Tester){
    $where['zt_tp_stagetester.tester']=$Tester;
    $where['zt_tp_stagetester.type']='M';
    
    $where['zt_tp_stage.state']='进行中';
    $m=M("project");        
    $count=$m->join('zt_tp_stage ON zt_tp_stage.proid =zt_project.id')
    ->join('zt_tp_stagetester ON zt_tp_stage.id =zt_tp_stagetester.stageid')
    ->join('zt_tp_exescene ON zt_tp_exescene.stagetesterid =zt_tp_stagetester.id')   
    ->where($where)->count();
    return $count;
}
/**
 * 自动化执行场景数
 */
function countAExescene($Tester){
    $where['zt_tp_stagetester.tester']=$Tester;
    $where['zt_tp_stagetester.type']='A';
    //$where['tp_program.prost']='进行中';
    $where['tp_stage.state']='进行中';
    $m=M("project");
    $count=$m->join('zt_tp_stage ON zt_tp_stage.proid =zt_project.id')
    ->join('zt_tp_stagetester ON zt_tp_stage.id =zt_tp_stagetester.stageid')
    ->join('zt_tp_exescene ON zt_tp_exescene.stagetesterid =zt_tp_stagetester.id')
    ->where($where)->count();
    return $count;
}
/**
 * 写用例模块数
 */
function countCExescene($Tester){
    $where['zt_tp_stagetester.tester']=$Tester;
    $where['zt_tp_stagetester.type']='C';
    //$where['tp_program.prost']='进行中';
    $where['zt_tp_stage.state']='进行中';
    $m=M("project");
    $count=$m->join('zt_tp_stage ON zt_tp_stage.proid =zt_project.id')
    ->join('zt_tp_stagetester ON zt_tp_stage.id =zt_tp_stagetester.stageid')
    ->join('zt_tp_exescene ON zt_tp_exescene.stagetesterid =zt_tp_stagetester.id')
    ->where($where)->count();
    return $count;
}

/**
 * 写用例模块数
 */
function countSExescene($Tester){
    $where['zt_tp_stagetester.tester']=$Tester;
    //$where['tp_program.prost']='进行中';
    $where['zt_tp_stage.state']='进行中';
    $m=M("project");
    $count=$m->join('zt_tp_stage ON zt_tp_stage.proid =zt_project.id')
    ->join('zt_tp_stagetester ON zt_tp_stage.id =zt_tp_stagetester.stageid')
    ->join('zt_tp_exescene ON zt_tp_exescene.stagetesterid =zt_tp_stagetester.id')
    ->where($where)->count();
    return $count;
}



/**
 * 根据funcid获取测试数据
 */
function getTest($id){
    $where['zt_tp_exefunc.funcid']=$id;
    $where['zt_tp_stage.proid']=$_SESSION['proid'];
    $m=M('tp_stage');
    $arr=$m ->where($where)
    ->join('zt_tp_stagetester ON zt_tp_stage.id =zt_tp_stagetester.stageid')
    ->join('zt_tp_exescene ON zt_tp_stagetester.id=zt_tp_exescene.stagetesterid')
    ->join('zt_tp_exefunc ON zt_tp_exescene.id=zt_tp_exefunc.exesceneid')
    ->order('zt_tp_exefunc.utime desc')
    ->select();

    foreach ($arr as $ar){
        $str.='<li class="list-group-item"><b>'
                    . $ar['tester']."</b>-".$ar['stage'].$ar['updatetime']."<br>"
                    .$ar['swho'].$ar['swhen'].$ar['scene']."<br>"
                    .$ar['sn'].".".$ar['func']."，<b>意图：</b>".$ar['casemain']."，<b>预期：</b>".$ar['caseexpected']."，<b>测试记录：</b>"
                    .$ar['remark'].'<span class="badge">'.$ar['result'].'</span><br>'                            
               .'</li>';
    };
    if($arr){
        return $str;
    }else{
        return '无测试记录';
    }
}
