<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ page import="java.util.List" %>
<%@ page import="com.javaex.vo.GuestBookVo" %>
<%@ page import="com.javaex.dao.GuestBookDao" %>
    
<%
    //파라미터 값 꺼내오기
        	request.setCharacterEncoding("UTF-8");
        	String name = request.getParameter("name");
        	String hp = request.getParameter("hp");
        	String company = request.getParameter("company");
        	
        	//vo로 묶기
        	GuestBookVo personVo = new GuestBookVo();
        	personVo.setName(name);
        	personVo.setHp(hp);
        	personVo.setCompany(company);
        	
        	//잘 왔나 test
        	System.out.println(personVo);
        	
        	
        	//Dao를 통해서 데이터 저장
        	GuestBookDao personDao = new GuestBookDao();
        	int count = personDao.personInsert(personVo);
        	//System.out.println(personDao);
        	
        	///////////////////////////////////////////////////////////////
        	//리스트 뿌리기 (http://localhost:8000/phonebook2/list.jsp) --> 리다이렉트
        		
        	response.sendRedirect("./list.jsp");
    %>    



