<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="http://code.jquery.com/jquery-1.10.2.js"></script>
<script>
	window.onload = function() {$("#location").val("<%=session.getAttribute("location") %>");}
</script>
</head>
<body>
	<div>
		<form action="settingProg.jsp" method="POST" name="setting">
			<fieldset>
				<legend>Setting</legend>
				<label>이름</label>
				<input type="text" name="name" id="name" value="<%=session.getAttribute("name") %>" required>
				<label>비밀번호</label>
				<input type="password" name="pwd" id="pwd" value="<%=session.getAttribute("pwd") %>" required>
				<label>지역</label>
				<select name="location" id="location">
					<option value="Korea">대한민국</option>
					<option value="England">영국</option>
					<option value="USA">미국</option>
					<option value="Australia">호주</option>
				</select>
				<input type="submit" value = "수정하기">
			</fieldset>
		</form>
		<form action="reset.jsp" method="POST">
			<fieldset>
				<legend>Reset</legend>
				<input type="submit" value = "초기화">
			</fieldset>
		</form>
	</div>
</body>
</html>