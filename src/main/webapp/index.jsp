<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<script type="text/javascript" src="${pageContext.request.contextPath}/jquery-1.8.3.js"></script>
<script type="text/javascript">  
    $(document).ready(function(){  
        $("#add").click(function(){   
            var userName = $("#userName").attr("value");  
            var age =$("#age").attr("value");  
               
            var user = {userName:userName,age:age};  
              
            $.ajax({  
                url:"/Testspringmvc/test1/s/addUserJson",  
                type:"get",  
                data:JSON.stringify(user),  
                success:function(data){  
                    alert("userName--->" + data.userName);  
                      
                }  
            });  
              
              
              
        });  
    });  
</script>  


<body>

	姓名：<input type="text" name="userName" id="userName"/>  
     	   年龄：<input type="text" name="age" id="age"/>  
          
        <input type="button" value="添加" id="add">  

</body>
</html>