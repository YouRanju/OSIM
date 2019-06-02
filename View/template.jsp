<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>OSIM</title>
		
		<!-- css -->
		<link rel="stylesheet" href="../View/css/contentCss.css?ver=2.9.2">
		<link rel="stylesheet" href="../View/css/reset.css?ver=1">

		<!-- script -->
		<script src="../js/timecheck.js?ver=2.7"></script> <!-- 현재시간  -->
		<script src="../js/monday.js?ver=2.9.5"></script> 	<!-- 월요일 이벤트  -->
		<script src="../js/otherday.js?ver=1.9.2"></script> <!-- 나머지 이벤트  -->
		
		<!-- jquery -->
		<script src="http://code.jquery.com/jquery-1.10.2.js"></script>
	</head>
	<body>
		<!-- 중간 영역에 넣을 페이지 불러오기 -->
		<%
			request.setCharacterEncoding("UTF-8");
			String contentPage = request.getParameter("CONTENTPAGE");
		%>

		<table width="100%" cellpadding="2" cellspacing="0">
			<tr>
				<td><jsp:include page="top.jsp" flush="false" /></td>
			</tr>

			<tr>
				<td valign="top">
					<jsp:include page="<%=contentPage %>" flush="false" />
				</td>
			</tr>

			<tr>
				<td><jsp:include page="bottom.jsp" flush="false" /></td>
			</tr>
		</table>
	</body>
</html>