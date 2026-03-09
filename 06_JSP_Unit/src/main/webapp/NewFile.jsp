<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>단위 변환기: 변환결과</title>
<link rel="stylesheet" href="/06_JSP_Unit/css/output.css">
</head>

<%
	
	double num = Double.parseDouble(request.getParameter("num"));
	String mode = request.getParameter("mode");
	
	String fromUnit = "";
	String toUnit = "";
	String className = "";
	
	double result= 0;
			
	switch(mode) {
		case "cmToInch":
			result = 0.3937008 * num;
			fromUnit = "cm";
			toUnit = "inch";
			break;
		
		case "squareToPyeoung":
			result = num / 3.3058;
			fromUnit = "㎡";
			toUnit = "평";
			className = "pyeoung";
			break;
		
		case "celToFah":
			result = (num * 1.8) + 32;
			fromUnit = "℃";
			toUnit = "℉";
			className = "fah";
			break;
			
		case "kmToMile":
			result = num * 0.621371;
			fromUnit = "km/h";
			toUnit = "mi/h";
			className = "mile";
			break;
		
		default:
			break;
	}
	
	
	String fromStr = String.format("%.1f %s",num, fromUnit);
	String toStr = String.format("%.1f %s",result, toUnit);
	
%>

<body class="<%=className %>">
	<div>
		<div>변환결과</div>
	
		<div>
			<div><%=fromStr %></div>
			
			<div>⬇</div>
			
			<div><%=toStr %></div>	 
			
			<button onclick="location.href = '/06_JSP_Unit/NewFile.html'">돌아가기</button>
		</div>
	</div>


</body>
</html>