<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<link rel="stylesheet" href="../View/css/boardCss.css?ver=1.1">
</head>
<body>
	<span id="messageView">
		<% if(session.getAttribute("mondayList") != null) {%>
			<jsp:include page="../Model/mondayMessageProg.jsp" />
		<%}%>
	</span>
</body>
</html>