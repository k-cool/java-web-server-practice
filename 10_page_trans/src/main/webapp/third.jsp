<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>

<%

	
	int a = Integer.parseInt(request.getParameter("a"));
	int b = Integer.parseInt(request.getParameter("b"));

	// 정석
 	Object cObj = request.getAttribute("c");
 	Integer c = (Integer) request.getAttribute("c"); // down casting
 	int cInt= c.intValue();
 	
 	// 오토 박싱, 언박싱
 	Object o = request.getAttribute("c");
 	int o2 = (int) o;
 	
 	// 최종 
 	// - 담고싶은 변수에 담고 에러나면 왼쪽 자료형의 참조버전으로 캐스트(wrapper class)
 	int ccc= (int) request.getAttribute("c");
 	

%>

<body>
	<h1>THIRD PAGE</h1>
	
	<h1><%=a %> + <%=b %> = <%=c %></h1>
</body>
</html>