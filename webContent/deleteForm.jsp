<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%	
	request.setCharacterEncoding("UTF-8");
	
	String no = request.getParameter("no");
%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action = "./delete.jsp" method = "post">
		<input type = "hidden" name = "no" value ="<%=no%>">
		비밀번호 <input type = "text" name = "pw" value="">
		<button type = "submit">확인</button>
	</form>
	<a href = "./addList">메인으로 돌아가기</a>
</body>
</html>