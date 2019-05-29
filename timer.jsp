<%@page import="java.util.Calendar"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
	request.setCharacterEncoding("UTF-8");
	
	Calendar cal = Calendar.getInstance();
	int month = 0, dd = 0, hour = 0, min = 0, sec = 0;
	String[] week = {"일","월","화","수","목","금","토"};
	String day = "";
	String txt = "";
	
	while(true) {
		month = cal.get(Calendar.MONTH);
		txt = month + "";
		
		//response.setParameter("txt", txt);
		
		Thread.sleep(1000);
	}
%>

<%= txt %>