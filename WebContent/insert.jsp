<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ page import="java.util.List" %>
<%@ page import="com.javaex.vo.GuestVo" %>
<%@ page import="com.javaex.dao.GuestDao" %>
    
<%
    request.setCharacterEncoding("UTF-8");

    //파라미터 값 꺼내오기
 	String name = request.getParameter("name");
 	String password = request.getParameter("password");
 	String content = request.getParameter("content");
 	
 	//vo로 묶기
 	GuestVo guestVo = new GuestVo(name, password, content);

 	
 	//잘 왔나 test
 	System.out.println(guestVo);
 	
 	
 	//Dao를 통해서 데이터 저장
 	GuestDao guestDao = new GuestDao();
 	int count = guestDao.guestInsert(guestVo);
 	
 	///////////////////////////////////////////////////////////////
 	//리스트 뿌리기 (http://localhost:8000/phonebook2/list.jsp) --> 리다이렉트
 		
 	response.sendRedirect("./addList.jsp");
%>    



