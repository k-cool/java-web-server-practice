<%@page import="com.sw.attr.Result"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>

<%
	int price = Integer.parseInt(request.getParameter("price"));
	int money = Integer.parseInt(request.getParameter("money"));
	int howMuch = Integer.parseInt(request.getParameter("howMuch"));	

%>

<body>

	<h1>상품이 <%=price %>원 내돈 <%=money %>원 <%=howMuch %>원이 모자라요.</h1>

</body>
</html>