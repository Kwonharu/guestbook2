<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.javaex.dao.GuestBookDao" %>
<%@ page import="java.util.List" %>
<%@ page import="com.javaex.vo.GuestBookVo" %>

<%
GuestBookDao personDao = new GuestBookDao();
	List<GuestBookVo> personList = personDao.personSelect("");
	
	//System.out.println(personList);
%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head> 
<body>

	<h1>전화번호부</h1>
	<h2>리스트</h2>

	<p>등록된 전화번호 리스트입니다.</p>
	
	<!-- 반복문 시작 -->
	<%for(int i =0; i<personList.size();i++){%>
	<table border="1">
		<tr>
			<td>이름(name)</td><td><%=personList.get(i).getName()%></td>
		</tr>
		<tr>
			<td>핸드폰(hp)</td><td><%=personList.get(i).getHp()%></td>
		</tr>
		<tr>
			<td>회사(company)</td><td><%=personList.get(i).getCompany()%></td>
		</tr>
		<tr>
			<td>
				<a href="./updateForm.jsp?id=<%=personList.get(i).getPerson_id()%>">[수정]</a>
			</td>
			<td>
				<a href="./delete.jsp?id=<%=personList.get(i).getPerson_id()%>">[삭제]</a>
			</td>
		</tr>
	</table>
	<br>
	<%} %>
	<!-- 반복문 끝 -->
	
	<!-- ./ : 파일의 현재 위치 (상대경로) -->
	<a href="./writeForm.jsp">전화번호 등록폼</a> <br>
	
	<!-- / : root (절대경로) -->
	<a href="/writeForm.jsp">전화번호 등록폼</a> <br>
	
	<!-- 읎서요 : == ./ -->
	<a href="writeForm.jsp">전화번호 등록폼</a>

</body>
</html>


