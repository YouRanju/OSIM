<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
	session.removeAttribute("location");
	session.removeAttribute("name");
	session.removeAttribute("pwd");
	
	response.sendRedirect("../Control/main.jsp");
%>