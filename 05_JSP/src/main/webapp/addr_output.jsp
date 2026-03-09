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
 	String addr = request.getParameter("addr");
	String addrKo = "";
	
	switch(addr) {
		case "seoul":
			addrKo = "서울";
			break;
		
		case "kyungju":
			addrKo = "경주";
			break;
		
		case "busan":
			addrKo = "부산";
			break;
		
		default:
			break;
	}
	
	String text = "당신의 주소는 "+ addrKo +"입니다.";

%>
	
	<h1><%=text %></h1>
</body>
</html>