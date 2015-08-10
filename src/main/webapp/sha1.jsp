<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>

<script src="${pageContext.request.contextPath }/js/sha1Utile.js"></script>
请选择需要计算SHA1的文件：<input type="file" />
<script>
document.querySelector("input").onchange=function(){
  var fr=new FileReader;
  fr.onload=function(){
    var data=new Uint8Array(fr.result);
    var result=sha1(data);
    var hex=Array.prototype.map.call(result,function(e){
      return (e<16?"0":"")+e.toString(16);
    }).join("");
    document.body.insertAdjacentHTML("beforeend","<p>"+hex+"</p>");
  };
  fr.readAsArrayBuffer(this.files[0]);
};
</script>
<body>

</body>
</html>