<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<script>
			function imgSrc() {
				 <% if( session.getAttribute("name")!= null) { %>
						document.getElementById("national").src = "<%= "../View/img/" + session.getAttribute("location").toString() + ".png?ver=1" %>";
				 <% } %>
				}
		</script>
	</head>
<body onload="initTime(); otherday(); imgSrc();" class="mainbody">
	<div id="dd">
		<img id = "national" src="../View/img/Korea.png?ver=1" alt="">
		현 재 시 간 | <span id="countdown" style="display: none"><%=session.getAttribute("today")%></span> <br> 
		다음 월요일 | <span id="nextMon"><%=session.getAttribute("thisMonth")%>월
			<%=session.getAttribute("thisDate")%>일</span>
		<span id="message">
			<% if(session.getAttribute("mondayList") != null) {%>
				<%= session.getAttribute("mondayList") %>
			<%}%>
		</span>
	</div>

	<div id="howMany">
		<img src="../View/img/zom.png" id="zom"> 
		<img src="../View/img/run.png" id="run">
		<span id="target"> 
			<% 
				if(session.getAttribute("name") == null) {
			%>		YOU
			<%	}
				else {
			%>
				<%=session.getAttribute("name")%>
			<%}%>
		</span> <
		<span id="youInfo">MONDAY</span>
		
		<div id="distance" style="display: none"><%=session.getAttribute("distance")%></div>
	</div>

	<img src="../View/img/line.jpg" id="effectImg">
</body>
</html>