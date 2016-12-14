<?php
return array(
	//'配置项'=>'配置值'
    'TMPL_PARSE_STRING'=>array(
        '__CSS__'=>__ROOT__.'/Public/css/',
        '__JS__'=>__ROOT__.'/Public/js/',
        '__IMAGES__'=>__ROOT__.'/Public/images/tuocai',
        '__UPLOAD__'=>__ROOT__.'/Upload/tuocai'
    ),
    
    'DB_HOST'   => 'hkmysql15.zzidc.ha.cn', // 服务器地址
    'DB_NAME'   => 'tuocai', // 数据库名
    'DB_USER'   => 'tuocai_f', // 用户名
    'DB_PWD'    => 'yaolihui129', // 密码
    'DB_PORT'   => 3306, // 端口
    'DB_PREFIX' => 'tuoc_', // 数据库表前缀
//     'DB_PREFIX' => 'tp_tc_', // 数据库表前缀
);