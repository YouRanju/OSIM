<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<link rel="stylesheet" href="../View/css/inputCss.css?ver=1.6">
	</head>
	<body>
		<div id="form"></div>
		<form action="../Model/signinProg.jsp" method="POST" class="sform">
			<fieldset>
				<legend>Sign In</legend>
				<label>이름</label>
				<input type="text" name="name" id="name" placeholder="홍길동" required>
				<label>비밀번호</label>
				<input type="password" name="pwd" id="pwd" required> 
				<input type="submit" value="SIGN IN">
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