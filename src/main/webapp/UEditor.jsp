<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript" charset="utf-8" src="${pageContext.request.contextPath}/ueditor/ueditor.config.js"></script>
<script type="text/javascript" charset="utf-8" src="${pageContext.request.contextPath}/ueditor/ueditor.all.min.js"> </script>


</head>
<body>
<h1>UEdeom</h1>
<form id="form1" name="form1" action="${pageContext.request.contextPath }/ue/show" onsubmit="oo()">
<script id="editor" name="editor" type="text/plain" style="width:1024px;height:500px;" ></script>
	<input type="submit" value="ok">
</form>
<input type="button" value="oo" onclick="oo()">
</body>
<script type="text/javascript">
	UE.getEditor('editor');
	function oo(){
		var content = UE.getEditor('editor').getContent();
		alert(content);
		document.form1.editor.value=content;
		alert(UE.getEditor('editor').imagePathFormat);
		document.form1.submit();
		
	}
	

</script>
</html>
