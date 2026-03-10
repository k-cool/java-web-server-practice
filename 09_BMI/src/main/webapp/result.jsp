<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@page import="java.text.DecimalFormat"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>BMI 결과</title>

<link rel="stylesheet" href="/09_BMI/css/result.css">
</head>

<%

	request.setCharacterEncoding("UTF-8");	
	
	String saveRealPath = request.getServletContext().getRealPath("/imgs");
	
	MultipartRequest mr = new MultipartRequest(request, saveRealPath, 30 * 1024 * 1024, "UTF-8",
			new DefaultFileRenamePolicy());

	DecimalFormat df = new DecimalFormat("###.#");
	
	String name = mr.getParameter("name");
	double height = Double.parseDouble(mr.getParameter("height"));
	double weight = Double.parseDouble(mr.getParameter("weight"));
	double bmi = weight / ((height/100) * (height/100));
	String status = "";
	
	if(bmi < 18.5){
		status= "저체중";
	} else if(bmi < 22.5){
		status= "정상";		
	} else if(bmi < 24.9){
		status= "비만전단계";		
	} else {
		status= "비만";		
	}
	
	String pic = mr.getFilesystemName("pic");
	
%>


<body>

	<div>	
		<div>
	 		<h2>BMI 결과</h2>
	 	</div>

		<div class="container">
			<div>
				<img class="img" src='imgs/<%=pic %>'>
			</div>
			
		
	        <div class="items">
	          <div class="item1">이름</div>
	          <div class="item2">
	          	<div><%=name %></div>
	          </div>
	        </div>
	        
	        <div class="items">
	          <div class="item1">키(CM)</div>
	          <div class="item2">
	           <div><%=df.format(height) %></div>
	          </div>
	        </div>
	        
	        <div class="items">
	          <div class="item1">체중(KG)</div>
	          <div class="item2">
	           <div><%=df.format(weight) %></div>
	          </div>
	        </div>
	        
	        <div class="items">
	          <div class="item1">BMI</div>
	          <div class="item2">
	           <div><%=df.format(bmi) %></div>
	          </div>
	        </div>
	        
	        <div class="items">
	          <div class="item1">결과</div>
	          <div class="item2">
	           <div><%=status %></div>
	          </div>
	        </div>
	       
	        <div class="btnWrapper">
	          	<button onclick="location.href='/09_BMI/bmi.html'">다시하기</button>	     
	        </div>
	      </div>
	     
	   
	   </div>
	      
</body>
</html>