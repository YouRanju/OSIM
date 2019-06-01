<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<script>
			function imgSrc() 
				{
				 <% if( session.getAttribute("name")!= null) { %>
					document.getElementById("national").src = "<%= "../View/img/" + session.getAttribute("location").toString() + ".png?ver=1" %>";
					<% } %>
				}
		</script>
	</head>
<body onload="initTime(); monday(); imgSrc();" class="mainbody">
	<div id="dd">
		<img id="national" src="../View/img/Korea.png?ver=1" alt=""> 
		현 재 시 간 | <span id="countdown" style="display: none"><%= session.getAttribute("today") %></span><br>
		남 은 시 간 | <span id="endTime"></span>
		<span id="message">
			<jsp:include page="mondayMessageView.jsp"></jsp:include>			
		</span>
	</div>
	<div id="howMany">
		<img src="../View/img/zom.png" id="zom"> 
		<img src="../View/img/run.png" id="run">
		<span id="youInfo">
			<%=session.getAttribute("thisMonth")%>/<%=session.getAttribute("thisDate")%>
			<% 
				if(session.getAttribute("name") == null) {
			%> YOU <%	}
				else {
			%> <%=session.getAttribute("name")%> <%}%>
		</span> 
		<span id="target">NEXT DAY</span>
		<div id="distance" style="display: none"><%=session.getAttribute("distance") %></div>
	</div>
	<img src="../View/img/line.jpg" id="effectImg">
</body>
</html>