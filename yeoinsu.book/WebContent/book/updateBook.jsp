<%@page import="yeoinsu.bookstore.member.login.domain.Book"%>
<%@page import="java.util.List"%>
<%@page import="yeoinsu.bookstore.member.login.service.BookServiceImpl"%>
<%@page import="yeoinsu.bookstore.member.login.service.BookService"%>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	if(request.getParameter("check")==null || request.getParameter("check").equals("")){
%>
		<c:redirect url="adminMain.jsp?msgId=21"/>
<%
	}else{
		
	BookService bookService = new BookServiceImpl();
	int check =Integer.parseInt(request.getParameter("check"));
	List<Book> books= bookService.getBooks();
	
	session.setAttribute("check", request.getParameter("check"));
	
	for(int i = 0 ; i<books.size();i++){
	 if(books.get(i).getBookNo() == check){
		 	books = bookService.getBook(books.get(i).getBookName());
			pageContext.setAttribute("book",books);		
		} 
	}
	}
%>
<!doctype html>
<html lang='ko'>
<head>
<title>Y Book Store</title>
<meta charset ="utf-8"/>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/1.1.3/sweetalert.min.css"/>
<script src ="http://code.jquery.com/jquery-3.1.1.min.js"></script>
<script src = "http://cdn.jsdelivr.net/jquery.validation/1.14.0/jquery.validate.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/1.1.3/sweetalert.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<script src="../res/js/alert.js"></script>
<style>
@import "../res/css/header.css";
@import "../res/css/footer.css";
@import "../res/css/bodybasic.css";
div#file{
	margin-left: 20%;
}
.title{
	text-align: left;
}
div {
	border: 1px solid white;
	text-align: center;
}
#QnA{
	margin-left: -0%;
	width: 80%;
}
input#id{
 	margin-left: -123px;
}
#center{
	margin-left : 33%;
}
input{
	width:80%;
	margin-left : -200px;
}

#list {
	width: 80%;
	left: 10%;
}
div#body {
	margin-top : 3%;
	display: inline-block;
	width: 90%;
	height: 450px;
	margin-left :150px;
	border:1px solid white;
	text-align: left;
}
div.bodyframe {
	width: 100%;
	padding: 81px;
}

.title h1,h4{
	display : inline;
	text-align :left;
}
div#text{
	width : 80%;
	margin-left : 195px;
} 
</style>
	<div class="right-top">
		<ul class="breadcrumb" class="blacktext">
			<li><a href ="adminMain.jsp" class="text-muted">Home</a></li>
			<li><a href="../main.jsp" class="text-muted">로그아웃</a></li>
		</ul>
	</div>
	
	<div class="logobox">
		<div id="img1"></div>
		<a type="button" style="color:purple" href ="adminMain.jsp"><h1>Y BookStore</h1></a>
	</div>
	
<body>
<div class="bodyframe">
	<div class="container" id="body">
		<div class="title">
			<h1>책 수정</h1><h4>|정보수정</h4>
		</div>
		<hr>
		<p align="left">정보수정 후 수정 버튼을 눌러주세요.</p>
		<form>
		<div class="updateBook">
		<div id="text">
		<c:forEach var="post" items="${book}">
			<div class="form-group">
				<input type="text" name="bookNum" class="form-control"  value="${post.bookNo}" disabled/>
			</div>
			<div class="form-group">
				<input type="text" name="bookName" class="form-control"  value="${post.bookName}" required/>
			</div>
			<div class="form-group">
				<input type="text" name="writer" class="form-control" value="${post.bookWriter}" required/>
				</div>
			<div class="form-group">
				<input type="number" name="price" class="form-control" value="${post.bookPrice}" required/>				
			</div>
			<div class="form-group">
				<input type="text" name="count" class="form-control" value="${post.bookEa}" required/>				
			</div>
		</c:forEach>
		</div>
		</div>
		<a href="adminMain.jsp" class="btn button-default" id="center">이전</a>
		<button formaction="updateBookProc.jsp" class="btn button-default" type="submit" id="updateBook">수정</button>
		</form>
	</div>
</div>
</body>

<footer>
<div class="bottombox">
	<div id="footimg"></div>
	<div id="footerlogo">
	<p><br><p>
	<p><strong>Y BookStore</strong></p>
	<p><br><p>
	<p>사업자등록번호 : 113-123-334578 | 대표전화 : 070-8245-7450 l | 문의 Mail : YBookStore1145@gmail.com</p>
	<p>개인정보 관리책임자 및 대표 : 여인수 | 서울 영등포구 영중로8길 3946번지 102호</p>
	</div>
</div>
</footer>
</html>