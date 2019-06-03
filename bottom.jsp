<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
</head>
<body>
	<div>
		<%
			if(session.getAttribute("isMon").equals("true")) {
		%>
			<form action="mondaymessage.jsp" method="POST" style="margin: 5px;">
				<fieldset style="padding: 5px;">
					<legend>OH, SHIT. IT'S MONDAY</legend>
					<label><%=session.getAttribute("thisMonth") %>월 <%=session.getAttribute("thisDate") %>일의 절규</label>
					<input type="text" name="osim" id="name" placeholder="살려줘..."
					 style="margin-left: 20px; padding: 2px; width: 85%">
					<input type="submit" value="절규" style="border:0; width: 5%; padding: 4px; margin-left: 30px;">
				</fieldset>
			</form>
		<%	}
			else {
		%>
			<div>OPEN TIME : NEXT MONDAY (<%=session.getAttribute("thisMonth") %>월 <%=session.getAttribute("thisDate") %>일)</div>
		<%	}
		%>
	</div>
</body>
</html>