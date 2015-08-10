<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<script type="text/javascript" src="/Testspringmvc/js/jquery.js"></script>
<script type="text/javascript">
$(document).ready(function(){  
	
	
	
	
})
function t(){
		var userList= new Array();
		 var user = {id:1,name:"zhangsan"} 
		 var user2 = {id:2,name:"lisi"}
	    userList.push(user);
	    userList.push(user2);
	    $.ajax({
	        url: "/Testspringmvc/test2/ceshi",
	        type:"post",
	        data:JSON.stringify(userList),
	        dataType:"json",
	        contentType:"application/json",
	        success:function(data){
	        },error:function(data){
	        }
	    });
	}

function stringarray(){
		alert('zz');
		var userList= new Array();
	    userList.push(1);
	    userList.push(2);
	    userList.push(7);
	    $.ajax({
	        url: "/Testspringmvc/test2/array",
	        type:"post",
	        data:JSON.stringify(userList),
	        dataType:"json",
	        contentType:"application/json",
	        success:function(data){
	        },error:function(data){
	        }
	    });
		
	}

</script>
<body>
<input value="string array"  type="button" onclick="stringarray()">
<input value="userlist"  type="button" onclick="t()">

</body>
</html>