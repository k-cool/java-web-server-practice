<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>

<%

	/*
	
	1. parameter
	- html에서 만든 값 
	- 자료형: String, String[]
	- request 객체에 실려서 전송
	
	2. attribute
	- java에서 만든 값
	- 자료형: Object -> 다됨
	- request 객체에 실려서 전송
	
	
	Servlet의 자동이동 시리즈 3개
	- redirect: 다른 페이지로 URL로 자동이동. req 소실
	- forward: 기존 URL유지하면서 다른 JSP페이지로 이동. req 보존 
	- include: 어떤 jsp속에 jsp -> 순서 제어가 안돼서 잘 안씀
	
	*/

	int a = Integer.parseInt(request.getParameter("a"));
	int b = Integer.parseInt(request.getParameter("b"));

	
	int c = a+b;
	
	request.setAttribute("c", c);
	
	// response.sendRedirect("third.jsp");
	RequestDispatcher rd= request.getRequestDispatcher("third.jsp");
	rd.forward(request, response);

%>



<body>
	<h1>SECOND PAGE</h1>
	<h1><%=a %> + <%=b %> = <%=c %></h1>
</body>
</html>