<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<jsp:include page="/Model/timeCheck.jsp" /> 

<%
	request.setCharacterEncoding("UTF-8");
	String isMonday = "";
	
	if(session.getAttribute("isMon")=="true") {
		isMonday = "/View/mondayContent.jsp";
	} else {
		isMonday = "/View/content.jsp";
	}
%>

<jsp:forward page="/View/template.jsp">
	<jsp:param value="<%=isMonday %>" name="CONTENTPAGE"/>
</jsp:forward>