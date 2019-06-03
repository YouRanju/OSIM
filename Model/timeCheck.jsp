<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.TimeZone"%>
<%@page import="java.util.Calendar"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");

	String location = "";
	if(session.getAttribute("location") != null) {
		location = session.getAttribute("location").toString();
	} else {
		location = "Korea";
	}
			
	Calendar cal = null;
	if(location.equals("Korea")) {
		cal = Calendar.getInstance(TimeZone.getTimeZone("Asia/Seoul"));
	} else if (location.equals("England")) {
		cal = Calendar.getInstance(TimeZone.getTimeZone("Europe/London"));
		cal.add(Calendar.HOUR, -8);
		
	} else if (location.equals("USA")) {
		cal = Calendar.getInstance(TimeZone.getTimeZone("America/New_York"));
		cal.add(Calendar.HOUR, -13);
	} else {
		cal = Calendar.getInstance(TimeZone.getTimeZone("Australia/Sydney"));
		cal.add(Calendar.HOUR, 1);
	}
	
	long todayDayOfWeek = cal.getTimeInMillis();
	long nextMonday = cal.get(Calendar.DAY_OF_WEEK) - 1, nextDay = 0, distance = 0;
	
	Date dt = new Date(todayDayOfWeek);
	SimpleDateFormat fd = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
	session.setAttribute("day", fd.format(dt));
	
	
	if(dt.getDay() == 1) {
		
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