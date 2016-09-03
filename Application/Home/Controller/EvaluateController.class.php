<?php
namespace Home\Controller;
use Think\Controller;
class EvaluateController extends Controller {
    //首页内容
    public function index(){
    	$data = M('essay')->field('id,title,date')->select();
    	$count=count($data);
    	$this->data=$data;
    	$this->count=$count;
    	$this->display();
    }
    
    //文章详情
    public function particulars(){
    	//查出文章
    	$where['id']=I('get.id');
    	$data=M('essay')->where($where)->find();
         	if($data){
         		//查出作者
         		$data_user=M('user')->where('id='.$data["uid"])->find();
         		$data["user_name"]=$data_user["username"];
         		//查出评论
         		$where_pl['wzid']=I('get.id');
         		$where_pl['fid']=0;
         		$where_pl['cid']=0;
         		$data_pl=M('evaluate')->where($where_pl)->select();
         		//查出评论的用户名
         		foreach ($data_pl as $key => $value) {
         			$data_user=M('user')->where('id='.$data_pl[$key]["uid"])->find();
         			$data_pl[$key]["user_name"]=$data_user["username"];
         		}
         		$this->assign("data_pl",$data_pl);
         		$this->assign("data",$data);
         		$this->display();
         	}else{
         		$this->redirect('Index/index');
         	}
    }

    //主楼评价
    public function pinjia(){
    	$data["content"]=str_replace("\n","<br/>",trim(I('post.pj_content')));
    	$data["fid"]=I('post.fid');
    	$data["wzid"]=I('post.wzid');
    	$data["date"]= date('Y-m-d H:i:s',time());
    	$data["uid"]= 3;
            if (empty($data["content"])) {
               $this->ajaxReturn(buildJsonArray('2','评论失败，字段不能为空!',$data));
               return;
            }
            $data_pl=M("evaluate")->data($data)->add();
    	if($data_pl){
    		//查出评论的用户名
    		$data_user=M('user')->where('id='.$data["uid"])->find();
    		$data["username"]=$data_user["username"];
    		$this->ajaxReturn(buildJsonArray('1','加载成功!',$data));
    	}
    
    }

    
    //回复页面遍历
    public function huifu(){
    	//查出评论
	$where_hf['cid']=I('post.hf_cid');
	$where_hf['fid']=array('neq',0);
	$data=M('evaluate')->where($where_hf)->select();
	//查出评论的用户名
	foreach ($data as $key => $value) {
                            if ($data[$key]["cid"]==$data[$key]["fid"]) {
                                $data_user=M('user')->where('id='.$data[$key]["uid"])->find();
                                $data[$key]["user_name"]=$data_user["username"];
                            }else{
                                $data_user=M('user')->where('id='.$data[$key]["uid"])->find();
                                $id=M('evaluate')->where('id='.$data[$key]["fid"])->find();
                                $data_hfuser=M('user')->where('id='.$id["uid"])->find();
                                $data[$key]["user_name"]=$data_user["username"];
                                $data[$key]["hfuser_name"]=$data_hfuser["username"];
                            }
	}
    	if ($data) {
    		$this->ajaxReturn(buildJsonArray('1','加载成功!',$data));
    	}
    }

    //楼层评价
    public function lctijiao(){
    	$data["cid"]=I("post.lctj_cid");
    	$data["wzid"]=I("post.lctj_wzid");
    	$data["uid"]=2;
    	$data["content"]=trim(I("post.lctj_content"));
    	$data["date"]=date("Y-m-d H:i:s",time());
            //传过来的评价内容不能为空
            if (empty($data["content"])){
               $this->ajaxReturn(buildJsonArray('2','评论失败，字段不能为空!',$data));
               return;
            }
            //根据内容判断回复对象
            if (preg_match ("/^(回复  ){1}(.+){1}：/i",$data["content"])){ 
                 //回复用户
                $data["fid"]=I("post.huifu_id");
                 $data["content"]=substr(strstr($data["content"],"："),3);
             } else { 
                //回复楼主
                 $data["fid"]=I("post.lctj_fid");
             } 

    	$data_tj=M("evaluate")->data($data)->add();
    	if($data_tj){
    		$data_user=M('user')->where('id='.$data["uid"])->find();
                            //$data["huifu_username"]=$data_user["huifu_username"];
    		$data["username"]=$data_user["username"];
    		$this->ajaxReturn(buildJsonArray("1","评论成功！",$data));
    	}
    }


    //用户回复





}