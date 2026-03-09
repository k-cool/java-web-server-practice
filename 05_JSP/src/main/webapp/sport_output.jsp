<%@page import="java.util.HashMap"%>
<%@page import="java.util.Map"%>
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
	String[] sports = request.getParameterValues("sport");

	
	Map<String, String> map = new HashMap<>();
	
	map.put("soccer","축구");
	map.put("basketball","농구");
	map.put("badminton","배드민턴");
	
	
	
	for(String item: sports){
		/*
		String sportKo = "";
		
		switch(item) {
			case "soccer":
				sportKo = "축구";
				break;
			
			case "basketball":
				sportKo = "농구";
				break;
			
			case "badminton":
				sportKo = "배드민턴";
				break;
			
			default:
				break;
		}
		*/
%>
		
	<h1><%=map.get(item) %></h1>
		
<%
	}
%>
	
</body>
</html>