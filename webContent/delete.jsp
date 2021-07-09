<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@	page import="com.javaex.dao.GuestBookDao" %>

<%
	request.setCharacterEncoding("UTF-8");
	GuestBookDao guestBookDao = new GuestBookDao();

	//파라미터 값 받기
	String pw = request.getParameter("pw");
	int no = Integer.parseInt(request.getParameter("no"));
	
	//삭제
	guestBookDao.delete(pw, no);
	
	//리다이렉트
	response.sendRedirect("./addList.jsp");
%>    

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>