<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
	
	if(session.getAttribute("name") == null) {
		out.println("<script>alert('로그인 후 이용하실 수 있습니다.');</script>");
		response.sendRedirect("main.jsp");
	} else {
%> 		<jsp:forward page="template.jsp">
		<jsp:param value="settingView.jsp" name="CONTENTPAGE"/>
		</jsp:forward>
<%	}
%>