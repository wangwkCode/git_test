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
        $("#add").click(function(){  
            var id = $("#userName").attr("value");  
            var name =$("#age").attr("value");  
               
            var user = [{id:id,name:name},{id:10,name:"aa"}];  
              
            $.ajax({  
                url:"/Testspringmvc/test1/s/",  
                type:"get",  
                data:user,  
                success:function(data){  
                    alert("userName--->" + data.age);  
                      
                }  
            });  
              
              
              
        });  
        
        $("#tt").click(function(){
        	alert('sss');
        })
    });  
    
  
</script>  


<body>
	<input type="button" value="t" id="tt">
	姓名：<input type="text" name="userName" id="userName"/>  
     	   年龄：<input type="text" name="age" id="age"/>  
          
        <input type="button" value="添加" id="add">  

</body>
</html>