<%@page import="java.util.List"%>
<%@page import="yeoinsu.bookstore.member.login.domain.Book"%>
<%@page import="yeoinsu.bookstore.member.login.service.BookServiceImpl"%>
<%@page import="yeoinsu.bookstore.member.login.service.BookService"%>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	if(request.getParameter("check")==null || request.getParameter("check").equals("")){
%>
	<c:redirect url="../user/userMain.jsp?msgId=41"/>
<%
	}else{
		
	BookService bookService = new BookServiceImpl();
	int check = Integer.parseInt(request.getParameter("check"));
	List<Book> books= bookService.getBooks();
	
	
		for(int i =0 ; i<books.size(); i++){
			if (books.get(i).getBookNo() == check){
				books.get(i).setBookEa(books.get(i).getBookEa()-1);
				Book book = books.get(i);
				bookService.updateBook(book);
			}
		}
	}
%>
<c:redirect url="../user/userMain.jsp?msgId=40"/>