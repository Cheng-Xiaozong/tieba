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

 <!-- 判断条件,是否有文章 -->
<?php if($count == 0): ?><p>抱歉，没有找到相关文章！</p><?php endif; ?>

<ul>
    <?php if(is_array($data)): $i = 0; $__LIST__ = $data;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?><li><a href="<?php echo U('Evaluate/particulars?id='.$vo['id']);?>"><?php echo ($vo["title"]); ?><span class="right"><?php echo ($vo["date"]); ?></span></a></li><?php endforeach; endif; else: echo "" ;endif; ?>
</ul>


  </div>
  <!-- 以下是公共模板尾部 -->
   <script src="/tieba/Public/bootstrap/js/bootstrap.min.js"></script>
   <script src="/tieba/Public/home/js/common.js"></script>
</body>
</html>