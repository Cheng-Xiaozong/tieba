<?php 
// 格式化打印数组
function P($array) {
	echo '<pre>';
	print_r($array);
	echo '</pre>';
}

/*
	功能:构造返回格式 JSON 数据
	Date:2015-10-02
	Author:QinJianbo
*/
function buildJsonArray($status,$message,$data){
	$resultJson = array(
		'status' => $status,
		'message'  => $message,
		'data' => $data
	);
	return $resultJson;
} 