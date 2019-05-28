<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<style>
	h1 { margin: 20px;}
</style>
</head>
<body>
	<jsp:include page="timeCheck.jsp" />

<%
	request.setCharacterEncoding("UTF-8");
	String isMonday = "";
	
	if(session.getAttribute("isMon") == "true") {
		isMonday = "OSIM!!!";
	} else {
		isMonday = "맙소사,,, 월요일이 다가오고 잇었!!!1";
	}
%>

	<h1><%=isMonday%></h1>
</body>
</html>