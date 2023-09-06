<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ page import="com.javaex.dao.GuestDao" %>

<%

	String password = request.getParameter("password");
	
	System.out.println(password);
	
	
	GuestDao guestDao = new GuestDao();
	int count = guestDao.guestDelete(password);
	System.out.println(count);
	
	//리스트 출력 --> 리스트 리다이렉트
	response.sendRedirect("./addList.jsp");
%>
