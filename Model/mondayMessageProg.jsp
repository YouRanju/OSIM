<%@page import="java.io.File"%>
<%@page import="java.io.FileReader"%>
<%@page import="java.io.BufferedReader"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
	BufferedReader reader = null;
	
	File[] f_list = new File(application.getRealPath("/WEB-INF/note/")).listFiles(); 
	String[] files = {};
	
	try {
		for(int i = 0 ; i < f_list.length ; i++) {
			File[] folder = new File(application.getRealPath("/WEB-INF/note/" + f_list[i].getName())).listFiles();
			
			out.println("<center><b>" + f_list[i].getName() + "</b></center><br>");
			for(int j = 0 ; j < folder.length ; j++) {
				
				String filePath = application.getRealPath("/WEB-INF/note/" + f_list[i].getName() + "/" + folder[j].getName());
				reader = new BufferedReader(new FileReader(filePath));
				
				while(true) {
					String str = reader.readLine();
					if(str == null) {
						break;
					}
					out.println(str+"<br>");
				}
			}
			
			out.println("<hr>");
		}	
	} catch(Exception e) {
		out.println("지정된 파일을 찾을 수 없습니다.");
	} finally {
		try{
			reader.close();
		} catch(Exception e) {
			out.print("<center class='exception'>월요일 게시판</center>");
		}
	}
	
	response.sendRedirect("main.jsp");
%>