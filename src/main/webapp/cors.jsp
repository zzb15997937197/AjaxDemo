<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>跨域下发送ajax请求</title>
<script type="text/javascript" src="js/jquery.min.js"></script>
   <script type="text/javascript">
     function loadXML(){
    	 $.ajax({ 
             type:"get", 
             data:"random="+Math.random(), 
             url:"https://api.github.com/users/octocat/gists", 
             dataType:"jsonp", 
             jsonp:"callback", 
             success:function(data){ 
                   //$.each(data, function(key, val) { 
                  //   $("#myDiv").html($("#myDiv").html()+val.cvalue+"</br>"); 
                   //}); 
                   alert("请求成功！");
                   console.log(data);
                   var str="连接为:<a href="+data.data[0].url+">url</a>,用户名为:"+data.data[0].owner.login
                   console.log(str);
                   $("#myDiv").html(str);
             } 
         }); 

     }
   
   </script>
</head>
<body>
 <button onclick="loadXML()">发送</button>
  <div id="myDiv">
  
  </div>
</body>
</html>