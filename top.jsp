<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href = "css/topCss.css?ver=1">
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

	<nav role="navigation">
		<div id="menuToggle">
			<input type="checkbox" /> 
			
			<span></span> 
			<span></span> 
			<span></span>

			<ul id="menu">
				<a href="main.jsp"><li>MAIN</li></a>
				<a href="information.jsp"><li>INFO</li></a>
				<a href="#"><li>SIGN IN</li></a>
				<a href="#"><li>SETTING</li></a>
				<a href="https://github.com/YouRanju/OSIM" target="_blank"><li>GITHUB</li></a>
			</ul>
		</div>
	</nav>
</body>
</html>