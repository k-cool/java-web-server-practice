<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="/05/login_output.css">
</head>
<body>

<%
	request.setCharacterEncoding("UTF-8");
	
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");

	String guideText = "";
	String color = "tomato";
		
	if(!"sw".equals(id)) {
		guideText = "존재하지 않는 회원입니다.";
	} else if(!"1004".equals(pw)) {
		guideText = "비밀번호가 잘못되었습니다.";
	} else{
		guideText = "환영합니다! sw님!";
		color = "yellowgreen";
	}

%>

<div class="glass-container">
	<h1>ID : <%=id %></h1>
	<h1>PW : <%=pw %></h1>
	<h2 style="color: <%=color%>;"> <%=guideText %></h2>
</div>



</body>
</html>