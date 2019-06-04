<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="css/contentCss.css?ver=7">
<script src="js/timecheck.js?ver=22"></script>
<script src="http://code.jquery.com/jquery-1.10.2.js"></script>
</head>
<body>
	<div id = "dd">
		현 재 시 간  | <span id="countdown" style="display:none"><%= session.getAttribute("today") %></span> <br>
		다음 월요일 |  <%= session.getAttribute("thisMonth") %>월 <%= session.getAttribute("thisDate") %>일
	</div>

	<div id = "howMany">
		<img src = "img/zom.png" id="zom">
		<img src = "img/run.png" id="run">
	</div>
	
	<div id = "distance" style="display:none"><%=session.getAttribute("distance") %></div>
	
	<img src = "img/line.jpg" id = "effectImg">

</body>
</html>