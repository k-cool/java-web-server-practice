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

	boolean isEven = num % 2 == 0;
	
	String result = isEven ? "EVEN" : "ODD";
	String color = isEven? "yellowgreen": "tomato";
	
	%>
	
	<h1 style="color: <%=color%>;"> <%=result %></h1>
</body>
</html>