<%@page import="java.util.Calendar"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
	request.setCharacterEncoding("UTF-8");
	String isMonday = "";
	
	if(session.getAttribute("isMon")=="true") {
		isMonday = "mondayContent.jsp";
	} else {
		isMonday = "content.jsp";
	}
%>

<jsp:forward page="template.jsp">
	<jsp:param value="<%=isMonday %>" name="CONTENTPAGE"/>
</jsp:forward>