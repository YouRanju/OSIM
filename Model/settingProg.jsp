<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
	String name = request.getParameter("name");
	String pwd = request.getParameter("pwd");
	String location = request.getParameter("location");
	
	session.setAttribute("newlocation", location);
	session.setAttribute("newname", name);
	session.setAttribute("newpwd", pwd);
	
	session.setAttribute("location", location);
	session.setAttribute("name", name);
	session.setAttribute("pwd", pwd);
	
	out.println("<script>alert('수정되었습니다.');document.location.href='../Control/main.jsp'</script>");
%>