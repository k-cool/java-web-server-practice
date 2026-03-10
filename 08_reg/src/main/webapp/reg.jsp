<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="./css/reg.css" />
</head>

<%
	request.setCharacterEncoding("UTF-8");	

	String name = request.getParameter("name");
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	String gender = request.getParameter("gender");
	String addr = request.getParameter("addr");
	String[] interest = request.getParameterValues("interest");
	String introduce = request.getParameter("introduce");

	String interStr = "";
	
	if(interest !=null) {
		for (String inter : interest) {
			interStr += "<div>" + inter + "</div>";
		}
	} else {
		interStr = "관심사 없음";
	}
%>



<body>
 	<div class="container">
        <div class="items">
          <div class="item1">Name</div>
          <div class="item2">
            <div><%=name %></div>
          </div>
        </div>
        <div class="items">
          <div class="item1">ID</div>
          <div class="item2">
            <div><%=id %></div>
          </div>
        </div>
        <div class="items">
          <div class="item1">PW</div>
          <div class="item2">
            <div><%=pw %></div>
          </div>
        </div>
        <div class="items">
          <div class="item1">Gender</div>
          <div class="item2">
            <div><%=gender %></div>
          </div>
        </div>
        <div class="items">
          <div class="item1">Addr</div>
          <div class="item2">
            <div><%=addr %></div>
          </div>
        </div>
        <div class="items inter">
          <div class="item1">Interest</div>
          <div class="item2 interest">
				<%=interStr %>
          </div>
        </div>
        <div class="items text">
          <div class="item1">Introduce</div>
          <div class="item2">
            <div><%=introduce %></div>
          </div>
        </div>
      </div>
</body>
</html>