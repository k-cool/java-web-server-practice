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

/*
	1. 돈이 모자를때만 버튼이 나오게 [얼마 모자른데요??] 버튼을 누르면 output3.jsp에서 모자른 금액안내
		상품이 10000원 내돈 5000원 5000원이 모자라요.
*/


	Result r = (Result)request.getAttribute("r");	


%>

<body>

	<h1>계산 결과</h1>

	<div>
		<div>상품 가격: <%=r.getPrice() %></div>
		<div>지불한 돈: <%=r.getMoney() %></div>
		<div>잔돈: <%=r.getEx()%></div>
		<div>멘트: <%=r.getSay() %></div>
		
		<%
			if(r.getEx() <0){ 
			
			int howMuch = r.getPrice() - r.getMoney();
			
		%>
		
	<button onclick="location.href='output3.jsp?price=<%=r.getPrice()%>&money=<%=r.getMoney() %>&howMuch=<%=howMuch %>'">1.얼마가 모자른데요??</button>
	<button onclick="location.href='output3.jsp?price=<%=r.getPrice()%>&money=<%=r.getMoney() %>&howMuch=<%=r.getEx() * -1 %>'">2.얼마가 모자른데요??</button>
	<button onclick="location.href='output3.jsp?price=<%=r.getPrice()%>&money=<%=r.getMoney() %>&howMuch=<%=howMuch %>'">3.얼마가 모자른데요??</button>
			
			
			<form action="output3.jsp">
				<input name="howMuch" hidden value="<%=howMuch %>">
				<button>얼마??</button>
			</form>	
			
			<br>
			
			<form action="ExController">
				<input name="howMuch" hidden value="<%=howMuch %>">
				<button>얼마??</button>
			</form>	
			
			<form action="ExController" method="POST">
				<input name="test" value="<%=howMuch %>">
				<button>얼마?? 데이터 완성</button>
			</form>	
			
			<form action="ExController" method="POST">
				<input name="test" value="<%=r.getEx() %>">
				<button>얼마?? 데이터 미완성</button>
			</form>	
		<% 
			} 
		%>
		
		
		
		
	</div>

</body>
</html>