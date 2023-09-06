<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page import="com.javaex.dao.GuestBookDao" %>
<%@ page import="java.util.List" %>
<%@ page import="com.javaex.vo.GuestBookVo" %>

<%
	GuestBookDao guestBookDao = new GuestBookDao();
	List<GuestBookVo> guestBookList = guestBookDao.guestBookSelect("");
	
	//System.out.println(personList);
%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

</head>
<body>
	<form action="./insert.jsp" method="post">
		<table border="1" width="540px">
			<tr>
				<td>이름</td><td><input type="text" name="name"></td>
				<td>비밀번호</td><td><input type="password" name="password"></td>
			</tr>
			<tr>
				<td colspan="4"><textarea cols="72" rows="5" name="content"></textarea></td>
			</tr>
			<tr>
				<td colspan="4"><button type="submit">등록</button></td>
			</tr>
		</table>
	</form>
	<br>

	<%for(int i = 0; i<guestBookList.size(); i++){%>
	<table border="1" width="540px">
		<tr>
			<td><%=guestBookList.get(i).getNo()%></td>
			<td><%=guestBookList.get(i).getName()%></td>
			<td><%=guestBookList.get(i).getReg_date()%></td>
			<td><a href="./deleteForm.jsp">삭제</a></td>
		</tr>
		<tr>
			<td colspan="4"><%=guestBookList.get(i).getContent()%></td>
		</tr>
	</table>
	<br>
	<%}%>	
</body>
</html>




