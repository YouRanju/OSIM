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
	String se_name = "";
String se_value = "";
Enumeration enum_01 = session.getAttributeNames(); 
int i = 0;
while(enum_01.hasMoreElements()) {
 i++; 

  se_name = enum_01.nextElement().toString(); 
  se_value = session.getAttribute(se_name).toString();
  
  out.println("<br>얻어온 세션 이름 [" + i + "] : " + se_name + "<br>");
  out.println("<br>얻어온 세션 값 [" + i + "] : " + se_value + "<hr>");
}%>
</body>
</html>