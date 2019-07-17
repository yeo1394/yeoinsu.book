<%@page import="yeoinsu.bookstore.member.login.domain.Book"%>
<%@page import="yeoinsu.bookstore.member.login.service.BookServiceImpl"%>
<%@page import="yeoinsu.bookstore.member.login.service.BookService"%>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	BookService bookService = new BookServiceImpl();

 	int bookNum =Integer.valueOf((String)session.getAttribute("check"));
	String bookname = request.getParameter("bookName");
	String writer = request.getParameter("writer");
	int price = Integer.parseInt(request.getParameter("price"));
	int count = Integer.parseInt(request.getParameter("count"));
	
	bookService.updateBook(new Book(bookNum,bookname,writer,price,count));
%>
<c:redirect url="adminMain.jsp?msgId=20"/>