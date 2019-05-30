<%@page import="java.util.Calendar"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");

	Calendar cal = Calendar.getInstance();
	long todayDayOfWeek = cal.getTimeInMillis();
	long nextMonday = cal.get(Calendar.DAY_OF_WEEK) - 1, nextDay = 0, distance = 0;
	
	if(cal.get(Calendar.DAY_OF_WEEK)-1 == 1) {
		session.setAttribute("isMon", "true");
		
		int Time = cal.get(Calendar.MONTH);
		session.setAttribute("thisMonth", Time+1);
		Time = cal.get(Calendar.DATE);
		session.setAttribute("thisDate", Time);
		
		cal.set(cal.get(Calendar.YEAR), cal.get(Calendar.MONTH), cal.get(Calendar.DATE) +1, 0, 0, 0);

		nextDay = cal.getTimeInMillis();
		distance = nextDay;
		session.setAttribute("distance", distance);	
		
	} else {
		session.setAttribute("isMon", "false");
		
		cal.set(Calendar.DAY_OF_WEEK, Calendar.MONDAY);
		if(nextMonday != 0) {
			cal.add(Calendar.DATE, 7);
		} 
		cal.set(cal.get(Calendar.YEAR), cal.get(Calendar.MONTH), cal.get(Calendar.DATE), 0, 0, 0);
	
		int Time = cal.get(Calendar.MONTH);
		session.setAttribute("thisMonth", Time+1);
		Time = cal.get(Calendar.DATE);
		session.setAttribute("thisDate", Time);
		
		distance = cal.getTimeInMillis();
		session.setAttribute("distance", distance);	
	}
	
	session.setAttribute("today", todayDayOfWeek);
%>