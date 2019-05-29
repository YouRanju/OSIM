<%@page import="java.util.Calendar"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");

	Calendar cal = Calendar.getInstance();
	
	int todayDayOfWeek = cal.get(Calendar.DAY_OF_WEEK)-1;

	if(cal.get(Calendar.DAY_OF_WEEK)-1 == 1) {
		session.setAttribute("isMon", "true");
	} else {
		session.setAttribute("isMon", "false");
		
		cal.set(Calendar.DAY_OF_WEEK, Calendar.MONDAY);
		if(todayDayOfWeek != 0) {
			cal.add(Calendar.DATE, 7);
		} 
		
		int Time = cal.get(Calendar.MONTH);
		session.setAttribute("thisMonth", Time+1);
		
		Time = cal.get(Calendar.DATE);
		session.setAttribute("thisDate", Time);
	}
%>