<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="css/contentCss.css?ver=10">
<script src="js/monday.js?ver=18"></script>
<script src="js/timecheck.js?ver=13"></script>
<script src="http://code.jquery.com/jquery-1.10.2.js"></script>
</head>
<body onload="initTime(); monday()">
	<div id = "dd">
		현 재 시 간 | <span id="countdown" style="display:none"><%= session.getAttribute("today") %></span><br>
		남 은 시 간 | <span id="endTime"></span>
	</div>
	<div id = "howMany">
		<img src = "img/zom.png" id="zom">
		<img src = "img/run.png" id="run">
		<span id="youInfo"><%=session.getAttribute("thisMonth")%>/<%=session.getAttribute("thisDate")%> YOU</span>
		<span id="target">NEXT TARGET</span>
	</div>
	<div id = "distance" style="display:none"><%=session.getAttribute("distance") %></div>
</body>
</html>