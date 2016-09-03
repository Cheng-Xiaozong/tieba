$(function(){
    //ajiax评论提交
    $(".ajtijiao").click(function(){
          var pj_content= $("textarea").val();
          var wzid=$('h1').attr("wzid");
          var url=getURL();
          $.ajax({
                        url:url+'/Home/Evaluate/pinjia',
                        type: 'POST',
                        data: {pj_content:pj_content,fid:0,wzid:wzid},
                        success: function( data ){
                            if(data.status==1){
                                 var textbox='<li>'
                                                      +'<div class="box clearfix">'
                                                      +'<div><span style="color:red;">'+data.data["username"]+'</span> <span class="right">'+data.data["date"]+'</span></div>'
                                                      +'<p><u>'+data.data["content"]+'</u></p>'
                                                      +'<a href="javascript:void(0)">回复(0)</a>'
                                                      +'</div>'
                                                      +'</li>';
                                   $(".huifu").append(textbox);
                                   $("textarea").val("");
                            }else{
                              alert(data.message);
                            }
                        },
                        error:function(data){
                                alert("请求失败~");
                        },

          })
    })


      //ajax查出楼层回复内容
      $(".huifua").click(function(){
              var enthis = $(this);
              var text= $(this).find("a").text();
              var cid=$(this).parents("li").attr("id");
              var url=getURL();
              $(this).next(".huifunr").slideToggle();
              $(this).next(".huifunr").toggleClass("hasclass");
              $(this).parents("li").find("textarea").val("");
              if(text=="收起回复"){
                  $(this).find("a").text("回复");
              }else{
                 $(this).find("a").text("收起回复");
              }
              //如果存hasslcass在就提交
              if ($(this).next(".huifunr").hasClass("hasclass")) {
                       //ajax提交
                        $.ajax({
                                  url:url+"/Home/Evaluate/huifu",
                                  type:"POST",
                                  data:{hf_cid:cid},
                                  success:function(data){
                                        if (data.status==1) {
                                                enthis.parents("li").find("ul").empty();
                                                var text ="";
                                                for(var i in data.data){
                                                  
                                                  if (data.data[i]["fid"]==data.data[i]["cid"]) {
                                                      text+='<li><p><i>'+data.data[i]["user_name"]+'：</i><u>'+data.data[i]["content"]+'</u></p><div>'+data.data[i]["date"]+' <a class="huifu_user" id="'+data.data[i]["id"]+'" href="javascript:void(0)">回复</a></div></li>';
                                                  }else{
                                                      text+='<li><p><i>'+data.data[i]["user_name"]+'</i>  回复  <i>'+data.data[i]["hfuser_name"]+'：</i><u>'+data.data[i]["content"]+'</u></p><div>'+data.data[i]["date"]+'<a class="huifu_user" id="'+data.data[i]["id"]+'" href="javascript:void(0)">回复</a></div></li>';
                                                  }
                                                 
                                                }
                                                enthis.next(".huifunr").find("ul").append(text);
                                        }
                                  },
                                  error:function(){
                                                alert("网络异常，请重试!");
                                                  enthis.next(".huifunr").slideToggle();
                                  },
                        })
              }
             
      })


      //回复楼层
      $(".huifunr_tj").click(function(){
              var url=getURL();
              var lctj_cid=$(this).parents("li").attr("id");
              var lctj_fid=lctj_cid;
              var lctj_wzid=$("h1").attr("wzid");
              var lctj_content=$(this).prev("textarea").val();
              var enthis=$(this);
               if(typeof(huifu_id)=="undefined"){
                     huifu_id="undefined";
                }
              $.ajax({
                        url:url+"/Home/Evaluate/lctijiao",
                        type:"POST",
                        data:{
                                lctj_cid:lctj_cid,
                                lctj_fid:lctj_fid,
                                lctj_wzid:lctj_wzid,
                                lctj_content:lctj_content,
                                huifu_id:huifu_id
                              },
                        success:function(data){
                                if(data.status==1){
                                    var box=enthis.parents("li").find("ul");
                                    if (data.data["fid"]==data.data["cid"]) {
                                           textbox='<li><p><i>'+data.data["username"]+'：</i><u>'+data.data["content"]+'</u></p><div>'+data.data["date"]+'<a class="huifu_user" href="javascript:void(0)">回复</a></div></li>';
                                    }else{
                                           textbox='<li><p><i>'+data.data["username"]+'</i>  回复  <i>'+huifu_username+'：</i><u>'+data.data["content"]+'</u></p><div>'+data.data["date"]+'<a class="huifu_user" href="javascript:void(0)">回复</a></div></li>';
                                    }
                                    box.append(textbox);
                                    enthis.prev("textarea").val("");
                                }else if(data.status==2){
                                    alert(data.message);
                               }
                        },
                        error:function(){
                                alert("网络故障，请稍后再试！");
                        }
              })
      })

  
     //回复用户
      $(document).on("click",".huifu_user",function(){
           var textarea = $(this).parents(".huifunr").find("textarea");
           huifu_username=$(this).parent("div").prev("p").find("i:first").text();
           huifu_username = huifu_username.replace(new RegExp("："), "");
           textarea.val("回复  "+huifu_username+"：");
           huifu_id=$(this).attr("id");
          $(this).parents("li").find("textarea").attr("id",huifu_id);
      })
  



 

  

  





































})