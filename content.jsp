
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script>
	function imgSrc() 
		{
		 <% if( session.getAttribute("name")!= null) { %>
			document.getElementById("national").src = "<%= "img/" + session.getAttribute("location").toString() + ".png" %>";
			<% } %>
		}
</script>
</head>
<body onload="initTime(); otherday(); imgSrc();" class="mainbody">
<jsp:include page="timeCheck.jsp" />  
	<div id="dd">
		<img id = "national" src="img/Korea.png" alt="">
		현 재 시 간 | <span id="countdown" style="display: none"><%=session.getAttribute("today")%></span>
		<br> 다음 월요일 | <span><%=session.getAttribute("thisMonth")%>월
			<%=session.getAttribute("thisDate")%>일</span>
		<span id="message">
			<%= session.getAttribute("mondayList") %>
		</span>
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
		
		<div id="distance" style="display: none"><%=session.getAttribute("distance")%></div>
		
	</div>

	
	<img src="img/line.jpg" id="effectImg">
</body>
</html>