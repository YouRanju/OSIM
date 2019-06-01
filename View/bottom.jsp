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
			<form action="../Model/mondaymessage.jsp" method="POST" style="margin: 5px; z-index:9999;">
				<fieldset style="padding: 5px; z-index:9999;"">
					<legend>OH, SHIT. IT'S MONDAY</legend>
					<label><%=session.getAttribute("thisMonth") %>월 <%=session.getAttribute("thisDate") %>일의 절규</label>
					<input type="text" name="osim" id="name" placeholder="살려줘..."
					 style="margin-left: 20px; padding: 2px; width: 85%; z-index:9999;"">
					<input type="submit" value="절규" style="border:0; width: 5%; padding: 4px; margin-left: 30px;">
				</fieldset>
			</form>
 		<%	}
			else {
		%>
			<div>
				<fieldset style="margin-top: 10px; padding: 12px;">
					OPEN TIME : NEXT MONDAY (<%=session.getAttribute("thisMonth") %>월 <%=session.getAttribute("thisDate") %>일)
				</fieldset>		
			</div>
		<%	}
		%>
	</div>
</body>
</html>