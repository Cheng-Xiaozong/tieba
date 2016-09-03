<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html>
<html lang="zh-CN">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
    <title>cxz</title>
    <link href="/tieba/Public/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link href="/tieba/Public/home/css/common.css" rel="stylesheet">
     <script src="//cdn.bootcss.com/jquery/1.11.3/jquery.min.js"></script>
    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="//cdn.bootcss.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="//cdn.bootcss.com/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
  </head>
  <body>
  <!-- 以上是公共模板头部 -->
  <div style="width:70%;margin: 5% auto;">
  <ul class="nav nav-pills ">
  <li role="presentation"><a href="<?php echo U('Index/index');?>">首页</a></li>
  <li role="presentation"  class="active"><a href="<?php echo U('Evaluate/index');?>">评论</a></li>
  <li role="presentation"><a href="#">其他</a></li>
</ul>


<div style="text-align: center">
	<h1 wzid="<?php echo ($data["id"]); ?>"><?php echo ($data["title"]); ?></h1>
	<p>时间：<?php echo ($data["date"]); ?>  作者：<?php echo ($data["user_name"]); ?></p>
	<p><?php echo ($data["content"]); ?></p>
</div>

<!-- 评论输入 -->
<div class="tijiao clearfix">
    <textarea name="text"></textarea>
    <input type="button" value="提交评论" class="ajtijiao">
</div>

<!-- 评论列表 -->
<ul class="huifu">
  <?php if(is_array($data_pl)): $i = 0; $__LIST__ = $data_pl;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?><li id="<?php echo ($vo["id"]); ?>">
      <div class="box clearfix">
          <div><span style="color:red;"><?php echo ($vo["user_name"]); ?></span> <span class="right"><?php echo ($vo["date"]); ?></span></div>
          <p><u><?php echo ($vo["content"]); ?></u></p>
          <p class="clearfix huifua"><a num="10" cid="<?php echo ($vo["cid"]); ?>" href="javascript:void(0)">回复</a></p>
          <div class="huifunr">
                    <!-- 评论列表 -->
                    <ul> 
                          <!-- <li><p><i>我是小强：</i><u>楼上的都是傻逼</u></p><div>2016年8月24日 12:52:15 <a href="javascript:void(0)">回复</a></div></li> -->
                          <!-- <li><p><i>马蓉</i>  回复  <i>王思聪：</i><u>楼上的都是傻逼</u></p><div>2016年8月24日 12:52:15 <a href="javascript:void(0)">回复</a></div></li> -->
                    </ul>
                    <!-- 回复功能 -->
                    <div class="tijiao clearfix">
                      <textarea name="text"></textarea>
                      <input type="button" value="提交评论" class="huifunr_tj">
                  </div>
            </div>
      </div>
  </li><?php endforeach; endif; else: echo "" ;endif; ?>
</ul>
<script src="/tieba/Public/home/js/Evaluate.js"></script>


  </div>
  <!-- 以下是公共模板尾部 -->
   <script src="/tieba/Public/bootstrap/js/bootstrap.min.js"></script>
   <script src="/tieba/Public/home/js/common.js"></script>
</body>
</html>