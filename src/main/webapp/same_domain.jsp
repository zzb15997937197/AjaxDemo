<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>同域下通过ajax请求</title>
<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript">
   function loadXML(){
	   //同域下，servlet为：/jsonp_demo
	   $.ajax({
		   type:"get",
		   data:"random="+Math.random(), 
		   url:"./jsonp_demo",
		   dataType:"jsonp",
		   jsonp:"callback", 
		   success:function(result){
			   alert(result);
			   console.log(result);
			 }
	   })   
   }
  
</script>

</head>
<body>
<button onclick="loadXML()">发送</button>
  <div id="myDiv">
  
  </div>
</body>
</html>