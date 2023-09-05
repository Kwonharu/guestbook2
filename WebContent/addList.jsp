<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page import="com.javaex.dao.GuestBookDao" %>
<%@ page import="java.util.List" %>
<%@ page import="com.javaex.vo.GuestBookVo" %>

<%
	GuestBookDao guestBookDao = new GuestBookDao();
	List<GuestBookVo> guestBookList = GuestBookDao.guestBookSelect("");
	
	//System.out.println(personList);
%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

</head>
<body>
	<form>
		<table border="1" width="540px">
			<tr>
				<td>이름</td><td><input type="text" name=""></td>
				<td>비밀번호</td><td><input type="password" name=""></td>
			</tr>
			<tr>
				<td colspan="4"><textarea cols="72" rows="5"></textarea></td>
			</tr>
			<tr>
				<td colspan="4"><button type="">등록</button></td>
			</tr>
		</table>
	</form>
	<br>

	<%for(int i = 0; i<personList.size(); i++){%>
	<table border="1" width="540px">
		<tr>
			<td><%=personList.get(i).get %></td>
			<td>이효리</td>
			<td>2022-01-01</td>
			<td><a href="">삭제</a></td>
		</tr>
		<tr>
			<td colspan="4">방문하고 갑니다.</td>
		</tr>
	</table>
	<br>
	<%}%>	
</body>
</html>




