<%@page import="java.util.List"%>
<%@ page language ="java" contentType="text/html; charset=utf-8" pageEncoding ="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="yeoinsu.bookstore.member.login.domain.Book"%>
<%@page import="yeoinsu.bookstore.member.login.service.BookServiceImpl"%>
<%@page import="yeoinsu.bookstore.member.login.service.BookService"%>
<%
	BookService bookService = new BookServiceImpl();
	String Searchname= request.getParameter("search");
	if(Searchname.equals("")&&Searchname.equals(null)){
%>
		<<c:redirect url="adminMain.jsp?msgId=51"/>
<%
	}else{
		
	pageContext.setAttribute("Books", bookService.getBook(Searchname));
%>
			<c:forEach var="post" items="${Books}">
				<div class="col-md-3" id="book">
					<div id="img">
						<div id="bookbox">
									
						</div>
					</div>
				<div id="book">
				<input type="radio" name="check" value="${post.bookNo}"/><br>
				<P>${post.bookName}</p>
				<p>${post.bookPrice}원</p>
				<p>${post.bookEa} EA</p>
				<a type="submit"href="buy/01.html" class='btn btn-default'>구매</a>
				</div>
				</div>
			</c:forEach>
<c:redirect url="searchBook.jsp"/>
<%
	}
%>