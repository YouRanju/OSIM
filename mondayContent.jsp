<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
</head>
<body onload="initTime(); monday()" class="mainbody">
<jsp:include page="timeCheck.jsp" />
<jsp:include page="mondayMessageProg.jsp" />

	<div id = "dd">
		현 재 시 간 | <span id="countdown" style="display:none"><%= session.getAttribute("today") %></span><br>
		남 은 시 간 | <span id="endTime"></span>
		<span style="display:none" id="message">
			<%= session.getAttribute("mondayList") %>
		</span>
	</div>
	<div id = "howMany">
		<img src = "img/zom.png" id="zom">
		<img src = "img/run.png" id="run">
		<span id="youInfo"><%=session.getAttribute("thisMonth")%>/<%=session.getAttribute("thisDate")%> 
			<% 
				if(session.getAttribute("name") == null) {
			%>		YOU
			<%	}
				else {
			%>
				<%=session.getAttribute("name")%>
			<%}%>
		</span>
		<span id="target">NEXT DAY</span>
	</div>
	<div id = "distance" style="display:none"><%=session.getAttribute("distance") %></div>
	<img src = "img/line.jpg" id = "effectImg">
</body>
</html>