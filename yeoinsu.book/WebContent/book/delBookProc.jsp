<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page import="yeoinsu.bookstore.member.login.domain.Book"%>
<%@page import="yeoinsu.bookstore.member.login.service.BookServiceImpl"%>
<%@page import="yeoinsu.bookstore.member.login.service.BookService"%>
<%

if(request.getParameter("check")==null || request.getParameter("check").equals("")){
%>
	<c:redirect url="adminMain.jsp?msgId=31"/>
<%
}else{
	BookService bookService = new BookServiceImpl();

	int bookNum =Integer.parseInt(request.getParameter("check"));

	bookService.delBook(bookNum);
}
%>
<c:redirect url="adminMain.jsp?msgId=30"/>