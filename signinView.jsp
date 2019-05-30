<%@page import="java.util.Enumeration"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
</head>
<body>
	<div>
		<form action="signinProg.jsp" method="POST">
			<fieldset>
				<legend>Sign In</legend>
				<label>이름</label> <input type="text" name="name" id="name"
					placeholder="홍길동" required> <label>비밀번호</label> <input
					type="password" name="pwd" id="pwd" required> <input
					type="submit" value="SIGN IN">
			</fieldset>
		</form>
	</div>
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