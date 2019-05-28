<%@page import="java.util.Calendar"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
	
	Calendar cal = Calendar.getInstance();
	
	if(cal.get(Calendar.DAY_OF_WEEK)-1 == 1) {
		session.setAttribute("isMon", "true");
	} else {
		session.setAttribute("isMon", "false");
	}
%>