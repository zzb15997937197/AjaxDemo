<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ajax请求</title>

<script>
    function send(){
        var xmlhttp;
        if(window.XMLHttpRequest){
        	xmlhttp=new XMLHttpRequest();
        }else{
        	xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
        }
        xmlhttp.onreadystatechange=function(){
        	if(xmlhttp.readyState==4 && xmlhttp.status==200){
        		document.getElementById("myDiv").innerHTML=xmlhttp.responseText;
        	}
        }
        xmlhttp.open("get","test",true);
        xmlhttp.send();
    	
    }

</script>
</head>
<body>
    <button onclick="send()">发送</button>
    
    <div id="myDiv"></div>
</body>
</html>