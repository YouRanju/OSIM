<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<link rel="stylesheet" href="../View/css/topCss.css?ver=1.1">
	</head>
	<body>
		<%
			request.setCharacterEncoding("UTF-8");
			String isMonday = "";
			
			if(session.getAttribute("isMon") == "true") {
				isMonday = "OSIM!!!";
			} else {
				isMonday = "맙소사... 월요일이 다가오고 있었!!!!!";
			}
		%>

		<h1><%=isMonday%></h1>

		<nav>
			<div id="menuToggle">
				<input type="checkbox" /> 
				
				<span></span> 
				<span></span> 
				<span></span>
	
				<ul id="menu">
					<a href="main.jsp"><li>MAIN</li></a>
					<a href="information.jsp"><li>INFO</li></a>
					<%
						if(session.getAttribute("name") == null) {
					%>		<a href="signin.jsp"><li>SIGN IN</li></a>
					<% 	}
						else {
					%>		
							<a href="../Model/logout.jsp"><li>LOGOUT</li></a>
					<%	}
					%>
					<a href="setting.jsp"><li>SETTING</li></a>
					<a href="https://github.com/YouRanju/OSIM" target="_blank"><li>GITHUB</li></a>
				</ul>
			</div>
		</nav>
	</body>
</html>