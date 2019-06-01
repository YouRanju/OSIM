<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
	String name = request.getParameter("name");
	String pwd = request.getParameter("pwd");
	
	if(session.getAttribute("newname") != null) {
		if(name.equals(session.getAttribute("newname")) && pwd.equals(session.getAttribute("newpwd"))) {
			session.setAttribute("location", session.getAttribute("newlocation"));
			session.setAttribute("name", name);
			session.setAttribute("pwd", pwd);
			
			response.sendRedirect("../Control/main.jsp");
		} else if(name.equals(session.getAttribute("name"))) {
			out.println("<script>alert('비밀번호를 잘못 입력하셨습니다.');history.back();</script>");
		} else {
			out.println("<script>alert('없는 회원입니다.');history.back();</script>");	
		}
	} else {
		if(name.equals("홍길동") && pwd.equals("1234")) {
			session.setAttribute("location", "Korea");
			session.setAttribute("name", name);
			session.setAttribute("pwd", pwd);
			
			response.sendRedirect("../Control/main.jsp");
		} else if(name.equals("홍길동")) {
			out.println("<script>alert('비밀번호를 잘못 입력하셨습니다.');history.back();</script>");
		} else {
			out.println("<script>alert('없는 회원입니다.');history.back();</script>");	
		}
	}
%>