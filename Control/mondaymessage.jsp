
<%@page import="java.io.File"%>
<%@page import="java.io.FileReader"%>
<%@page import="java.io.BufferedReader"%>
<%@page import="java.time.LocalDate"%>
<%@page import="java.util.Date"%>
<%@page import="java.io.PrintWriter"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
		request.setCharacterEncoding("utf-8");
		String osim = request.getParameter("osim");
		
		LocalDate date = LocalDate.now();
		String folder = date.getYear() + "" + 
				((date.getMonthValue()-10 < 0) ? "0"+date.getMonthValue() : date.getMonthValue()) + ""
				+ ((date.getDayOfMonth()-10 < 0) ? "0"+date.getDayOfMonth() : date.getDayOfMonth());
		
		Date ddate = new Date();
		Long time = ddate.getTime();
		String filename = time + ".txt";
		
		PrintWriter writer = null;
		String result;

		File desti = new File(application.getRealPath("/WEB-INF/note/")+folder);

		if(!desti.exists()){
			desti.mkdir();
		}
		
		try {
			String filePath = application.getRealPath("/WEB-INF/note/"+folder+"/"+filename);
			
			writer = new PrintWriter(filePath);
			writer.println(osim);
			
			session.setAttribute("mondayList", osim);
			
			writer.flush();
		} catch(Exception e) {
			out.println("오류 발생");
		} finally {
			writer.close();
		}
		
		response.sendRedirect("main.jsp");
%>