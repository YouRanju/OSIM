
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="css/contentCss.css?ver=2.3">
</head>
<body onload="initTime(); otherday()" class="mainbody">
<jsp:include page="timeCheck.jsp" />  
	<div id="dd">
		현 재 시 간 | <span id="countdown" style="display: none"><%=session.getAttribute("today")%></span>
		<br> 다음 월요일 | <span><%=session.getAttribute("thisMonth")%>월
			<%=session.getAttribute("thisDate")%>일</span>
	</div>

	<div id="howMany">
		<img src="img/zom.png" id="zom"> <img src="img/run.png" id="run">
		<span id="target"> 
			<% 
				if(session.getAttribute("name") == null) {
			%>		YOU
			<%	}
				else {
			%>
				<%=session.getAttribute("name")%>
			<%}%>
		</span> <span id="youInfo">MONDAY</span>
	</div>

	<div id="distance" style="display: none"><%=session.getAttribute("distance")%></div>

	<img src="img/line.jpg" id="effectImg">
</body>
</html>