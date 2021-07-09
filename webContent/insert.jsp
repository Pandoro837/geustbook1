<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.javaex.dao.GuestBookDao" %>
<%@ page import="com.javaex.vo.GuestBookVo" %>

<%
	request.setCharacterEncoding("UTF-8");
	//파라미터 값 받기
	String name = request.getParameter("name");
	String pw = request.getParameter("pw");
	String content = request.getParameter("content");
	
	GuestBookDao guestBookDao = new GuestBookDao();
	//파라미터를 통한 guestBookVo 생성
	GuestBookVo guestBookInsert = new GuestBookVo(name, pw, content);
	
	//인서트
	guestBookDao.insert(guestBookInsert);
	
	response.sendRedirect("./addList.jsp");
	
%>

