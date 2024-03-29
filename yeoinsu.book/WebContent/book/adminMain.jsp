<%@page import="yeoinsu.bookstore.member.login.domain.Book"%>
<%@page import="java.util.List"%>
<%@page import="yeoinsu.bookstore.member.login.service.BookService"%>
<%@page import="yeoinsu.bookstore.member.login.service.BookServiceImpl"%>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	BookService bookService = new BookServiceImpl();
	pageContext.setAttribute("Books", bookService.getBooks());
	List<Book> books = bookService.getBooks();
	int count = (int)books.size()/8;
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
div.all {
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

.carousel {
	margin-bottom: 0;
	padding: 0 40px 30px 40px;
}

.carousel-control {
	left: -12px;
	height: 40px;
	width: 40px;
	background: none repeat scroll 0 0 #222222;
	border: 4px solid #FFFFFF;
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
	background: #cecece;
}

.carousel-indicators .active {
	background: #428bca;
}
</style>
<script>
var alert = function(msg,type){
	swal({
		title : '',
		text : msg,
		type : type,
		customClass :'sweet-size',
		timer:1000,
		showConfirmButton: false
	});
}

var isBookNo = function(){
	var result = false;
	if($('#book :radio:checked').length) result = true;
	return result;
}
</script>
</head>
<div id="right-top">
	<ul class="breadcrumb" class="blacktext">
		<li><a href ="adminMain.jsp" class="text-muted">Home</a></li>
		<li><a href="../main.jsp" class="text-muted">로그아웃</a></li>
	</ul>
</div>
<div class="logobox">
	<div id="img1"></div>
	<a type="button" style="color: purple" href="adminMain.jsp"><h1>Y
			BookStore</h1></a>
</div>
<br>
<body>
<form name='bookForm'>
<div>
	<input type="text" class="search" name="search"> 
	<button class='btn btn-default' type='submit' formaction="searchBook.jsp">검색</button>
</div>
<br>
<div class='btn-group btn-group-justified' id="list">
	<div class="btn-group">
		<a href="addBook.jsp" class='btn btn-default' type='submit'>책 등록</a>
	</div>
	<div class="btn-group">
		<button class="btn btn-default" formaction="updateBook.jsp" type="submit" id="update">수정</button>
	</div>
	<div class="btn-group">
		<button class='btn btn-default' type="submit" formaction="delBookProc.jsp" id="delete">책 삭제</button>
	</div>
</div>
	<div class="all">
		<article>
			<section>
				<div class="container">
					<div class="row">
						<div id="Carousel" class="carousel slide" data-ride="carousel">
							<ol class="carousel-indicators">
								<li data-target="#Carousel" data-slide-to="0" class="active"></li>							
							<%for(int i = 1 ; i<=count; i++){
							%>
								<li data-target="#Carousel" data-slide-to="<%=i%>"></li>
							<%
							}
							%>
							</ol>

							<div class="carousel-inner" style="height: 90%;">

								<div class="item active">
									<div>
										<c:forEach var="post" items="${Books}" end="7">
											<div class="col-md-3" id="book">
												<div id="img">
													<div id="bookbox">
									
													</div>
												</div>
												<div id="book" name="bookinfo">
												<input type="radio" name="check" value="${post.bookNo}"/><br>
												<p>${post.bookName}<p>
												<p>${post.bookPrice}원</p>
												<p>${post.bookEa} EA</p>
												<button id="buy" type="submit" formaction="../buy/adminBuyProc.jsp" class='btn btn-default'>구매</button>
												</div>
											</div>
										</c:forEach>
										
									</div>
								</div>
							<%for(int i=0 ; i<count; i++){
								int j = 8*(i+1);%>
								<div class="item">
									<div class="row">										
										<c:forEach var="post" items="${Books}" begin="<%=j%>" end="<%=j+7%>">
											<div class="col-md-3" id="book">
												<div id="img">
													<div id="bookbox">
									
													</div>
												</div>
												<div id="book" name="bookinfo">
												<input type="radio" name="check" value="${post.bookNo}"/><br>
												<p>${post.bookName}<p>
												<p>${post.bookPrice}원</p>
												<p>${post.bookEa} EA</p>
												<button id="buy" type="submit" formaction="../buy/adminBuyProc.jsp" class='btn btn-default'>구매</button>
												</div>
											</div>
										</c:forEach>
									</div>
								</div>
						<%
							}
						%>
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
<%@ include file='msg/msg.jsp'%>