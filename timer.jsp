<%@page import="java.util.Calendar"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
	request.setCharacterEncoding("UTF-8");
	
	Calendar cal = Calendar.getInstance();
	int month = 0, dd = 0, hour = 0, min = 0, sec = 0;
	String[] week = {"��","��","ȭ","��","��","��","��"};
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