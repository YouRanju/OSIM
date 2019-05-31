<%@page import="java.util.Enumeration"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="css/inputCss.css?ver=1.3">
</head>
<body>
	<div id="form"></div>
	<form action="signinProg.jsp" method="POST">
		<fieldset>
			<legend>Sign In</legend>
			<label>이름</label><br> <input type="text" name="name" id="name"
				placeholder="홍길동" required> <br> <label>비밀번호</label> <br> <input
				type="password" name="pwd" id="pwd" required> <br> <input
				type="submit" value="SIGN IN">
		</fieldset>
	</form>
	<%
		if(session.getAttribute("newname") != null) {
			out.println("남아있는 로그인 값 : " + session.getAttribute("newname") + "/" 
						+ session.getAttribute("newpwd") + "/" 
						+ session.getAttribute("newlocation")
						);
		}
	%>
</body>
</html>