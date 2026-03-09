<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<%
	int num = Integer.parseInt(request.getParameter("num"));

	String text= "안녕하세요";
	
	if(num <20) text = "안녕";
	
	%>
	
	<h1> <%=text %></h1>
</body>
</html>