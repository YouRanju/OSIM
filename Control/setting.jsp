<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
	
	if(session.getAttribute("name") == null) {
		out.println("<script>alert('로그인 후 이용하실 수 있습니다.');document.location.href='main.jsp';</script>");
	} else {
%> 		<jsp:forward page="../View/template.jsp">
			<jsp:param value="../View/settingView.jsp" name="CONTENTPAGE"/>
		</jsp:forward>
<%	}
%>