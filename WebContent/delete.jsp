<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ page import="com.javaex.dao.GuestBookDao" %>

<%
	//파라미터 꺼내기 (db 전달해서 삭제할 id값)
	String password = request.getParameter("password");
	
	System.out.println(password);
	
	
	GuestBookDao guestBookDao = new GuestBookDao();
	int count = guestBookDao.guestBookDelete(password);
	System.out.println(count);
	
	//리스트 출력 --> 리스트 리다이렉트
	response.sendRedirect("./addList.jsp");
%>
