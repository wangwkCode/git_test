<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<!--  <script src="http://js.nicedit.com/nicEdit-latest.js" type="text/javascript"></script>
<script type="text/javascript">bkLib.onDomLoaded(nicEditors.allTextAreas);</script>
	-->					
<script src="${pageContext.request.contextPath }/js/nicEdit.js" type="text/javascript"></script>
<script type="text/javascript">	
bkLib.onDomLoaded(function(){nicEditors.allTextAreas()});
</script>
						
<body>
<form id="form1" name="form1" action="${pageContext.request.contextPath }/ue/show" onsubmit="oo()">

<textarea name="editor" cols="40" escapeHtml=true></textarea>
<input type="submit"> 
</form>
<br />				
</body>
</html>