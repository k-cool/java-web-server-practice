<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>

<%
	String a= request.getParameter("a");
	String b= request.getParameter("b");
	int c = (int) request.getAttribute("c");
	
	
%>

<body>
	<h1><%=a %> + <%=b %> = <%=c %></h1>
</body>
</html>