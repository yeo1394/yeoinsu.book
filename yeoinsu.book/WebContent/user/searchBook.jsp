<%@page import="yeoinsu.bookstore.member.login.domain.Book"%>
<%@page import="java.util.List"%>
<%@page import="yeoinsu.bookstore.member.login.service.BookServiceImpl"%>
<%@page import="yeoinsu.bookstore.member.login.service.BookService"%>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	BookService bookService = new BookServiceImpl();
	String Searchname= request.getParameter("search");
	List<Book> books = bookService.getBook(Searchname);
	pageContext.setAttribute("books", books);

%>
<!doctype html>
<html lang='ko'>
<head>
<title>Y Book Store</title>
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/1.1.3/sweetalert.min.css" />
<script src="http://code.jquery.com/jquery-3.1.1.min.js"></script>
<script
	src="http://cdn.jsdelivr.net/jquery.validation/1.14.0/jquery.validate.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/1.1.3/sweetalert.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<script src="../res/js/alert.js"></script>
<style>
@import "../res/css/header.css";
@import "../res/css/footer.css";
@import "../res/css/bodybasic.css";
div.all{
	margin: 5%;
}

div {
	border: 1px solid white;
	text-align: center;
}

#list {
	width: 80%;
	left: 10%;
}

h1 {
	color: puple;
}

.carousel {
	margin-bottom: 0;
	padding: 0 40px 30px 40px;
}

.carousel-control {
	left: -12px;
	height: 40px;
	width: 40px;
	background: none repeat scroll 0 0 purple;
	border: 4px solid purple;
	border-radius: 23px 23px 23px 23px;
	margin-top: 20%;
}

.carousel-control.right {
	right: -12px;
}

.carousel-indicators {
	right: 50%;
	top: auto;
	bottom: -10px;
	margin-right: -19px;
}

.carousel-indicators li {
	background: rgb(234,206,231);
}

.carousel-indicators .active {
	background: purple;
}

.title {
	text-align: left;
	margin-left: 10%;
}
h2,h5{
	display: inline;
}
hr#p{
	border: inset 5px rgb(234,206,231);
}
</style>
</head>
<div id="right-top">
	<ul class="breadcrumb" class="blacktext">
		<li><a href="userMain.jsp" class="text-muted">Home</a></li>
		<li><a href="../main.jsp" class="text-muted">로그아웃</a></li>
		<li><a href="update.jsp" class="text-muted">회원정보관리</a></li>
		<li><a href="#" class="text-muted" onClick="delUserAlert()">회원탈퇴</a></li>
	</ul>
</div>
<div class="logobox">
		<div id="img1"><img alt="로고" src="../res/img/yLogo.jpg" style="width:100%; height:auto;"></div>
		<a type="button" style="color:purple" href ="main.jsp"><h1>BookStore</h1></a>
	</div>
<br>
<body>
<form name='bookForm'>
<div>
	<input type="text" class="search" name="search"> 
	<button class='btn btn-default' type='submit' formaction="searchBook.jsp">검색</button>
</div>
<hr id="p">
<br>
<div class="all">
		<article>
			<section>
				<div class="container">
					<div class="row">
						<div id="Carousel" class="carousel slide" data-ride="carousel">
							<ol class="carousel-indicators">
								<li data-target="#Carousel" data-slide-to="0" class="active"></li>
								<li data-target="#Carousel" data-slide-to="1"></li>
								<li data-target="#Carousel" data-slide-to="2"></li>
							</ol>

							<div class="carousel-inner" style="height: 90%;">

								<div class="item active">
									<div>
										<c:forEach var="post" items="${books}">
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
												<button id="buy" type="submit" formaction="../buy/userBuyProc.jsp" class='btn btn-default'>구매</button>
												</div>
											</div>
										</c:forEach>
										
									</div>
								</div>
							</div>
						<!-- 좌우 옮기는 화살표 -->
						<a data-slide="prev" href="#Carousel"
							class="left carousel-control">‹</a> <a data-slide="next"
							href="#Carousel" class="right carousel-control">›</a>
					</div>
				</div>
			</div>
		</section>
	</article>
</div>
</form>
</body>
<footer>
<hr id="p">
	<div class="bottombox">
		<div id="footimg"></div>
		<div id="footerlogo">
			<p>
				<br>
			<p>
			<p>
				<strong>Y BookStore</strong>
			</p>
			<p>
				<br>
			<p>
			<p>사업자등록번호 : 113-123-334578 | 대표전화 : 070-8245-7450 l | 문의 Mail :
				YBookStore1145@gmail.com</p>
			<p>개인정보 관리책임자 및 대표 : 여인수 | 서울 영등포구 영중로8길 3946번지 102호</p>
		</div>
	</div>
</footer>
</html>