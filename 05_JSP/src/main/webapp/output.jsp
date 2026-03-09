<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="/05/output.css" />
</head>
<body>
<%!
	public int getMok(int a, int b){
		return a / b;
	}
%>

<%
	//		1. 값 받기
		int x = Integer.parseInt(request.getParameter("x"));
		int y = Integer.parseInt(request.getParameter("y"));
		
		int hap = x + y;
		int cha = x - y;
		int gob = x * y;
		int mok = x / y;
		int mok2 = getMok(x, y);

	
%>  

<%
    if(hap > 10) {
%>

<div>
	<h1><%= x %> + <%= y %> = <%= hap %></h1>
	<h1><%= x %> - <%= y %> = <%= cha %></h1>
	<h1><%= x %> * <%= y %> = <%= gob %></h1>
	<h1><%= x %> / <%= y %> = <%= mok %></h1>
	<h1>mok2 = <%= mok2 %></h1>
	<h1>getMok(x, y) = <%= getMok(x, y) %></h1>
</div>

<% } %>
		

</body>
</html>