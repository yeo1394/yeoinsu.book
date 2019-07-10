<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
</head>
<div id="right-top">
	<ul class="breadcrumb" class="blacktext">
		<li><a href="adminMain.jsp" class="text-muted">Home</a></li>
		<li><a href="../main.jsp" class="text-muted">로그아웃</a></li>
		<li><a href="#" class="text-muted">회원정보관리</a></li>
		<li><a href="#" class="text-muted" onClick="alert('회원탈퇴','정말 탈퇴하시겠습니까?','warning')">회원탈퇴</a></li>
	</ul>
</div>
<div class="logobox">
	<div id="img1"></div>
	<a type="button" style="color: purple" href="adminMain.jsp"><h1>Y
			BookStore</h1></a>
</div>
<br>
<div>
	<input type="text" class="search"> <a href="#"
		class='btn btn-default' type='submit'>검색</a>
</div>
<br>
<div class='btn-group btn-group-justified' id="list">
	<div class="btn-group">
		<a href="#" class='btn btn-default' type='submit'>책 등록</a>
	</div>
	<div class="btn-group">
		<a href="#" class='btn btn-default' type='submit'>책 수정</a>
	</div>
	<div class="btn-group">
		<a href="#" class='btn btn-default' type='submit' onClick="alert('책 삭제','선택된 책을 삭제하시겠습니까?','warning')">책 삭제</a>
	</div>
</div>
<body>
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
										<div class="col-md-3">
											<div id="img">
												<div id="bookbox"></div>
											</div>
											<input type="radio" name="check" /><br>
											<P>{책명}</p>
											<p>{가격}원</p>
											<p>{재고}</p>
										</div>
										<div class="col-md-3">
											<div id="img">
												<div id="bookbox"></div>
											</div>
											<input type="radio" name="check" /><br>
											<P>{책명}</p>
											<p>{가격}원</p>
											<p>{재고}</p>
										</div>
										<div class="col-md-3">
											<div id="img">
												<div id="bookbox"></div>
											</div>
											<input type="radio" name="check" /><br>
											<P>{책명}</p>
											<p>{가격}원</p>
											<p>{재고}</p>
										</div>
										<div class="col-md-3">
											<div id="img">
												<div id="bookbox"></div>
											</div>
											<input type="radio" name="check" /><br>
											<P>{책명}</p>
											<p>{가격}원</p>
											<p>{재고}</p>
										</div>
										<div class="col-md-3">
											<div id="img">
												<div id="bookbox"></div>
											</div>
											<input type="radio" name="check" /><br>
											<P>{책명}</p>
											<p>{가격}원</p>
											<p>{재고}</p>
										</div>
										<div class="col-md-3">
											<div id="img">
												<div id="bookbox"></div>
											</div>
											<input type="radio" name="check" />
											<P>{책명}</p>
											<p>{가격}원</p>
											<p>{재고}</p>
										</div>
										<div class="col-md-3">
											<div id="img">
												<div id="bookbox"></div>
											</div>
											<input type="radio" name="check" /><br>
											<P>{책명}</p>
											<p>{가격}원</p>
											<p>{재고}</p>
										</div>
										<div class="col-md-3">
											<div id="img">
												<div id="bookbox"></div>
											</div>
											<input type="radio" name="check" /><br>
											<P>{책명}</p>
											<p>{가격}원</p>
											<p>{재고}</p>
										</div>
									</div>
								</div>

								<div class="item">
									<div class="row">
										<div class="col-md-3">
											<div id="img">
												<div id="bookbox"></div>
											</div>
											<input type="radio" name="check" /><br>
											<P>{책명}</p>
											<p>{가격}원</p>
											<p>{재고}</p>
										</div>
									</div>
								</div>

								<div class="item">
									<div class="row">
										<div class="col-md-3">
											<div id="img">
												<div id="bookbox"></div>
											</div>
											<input type="radio" name="check" /><br>
											<P>{책명}</p>
											<p>{가격}원</p>
											<p>{재고}</p>
										</div>
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
<%@ include file='../user/msg/msg.jsp'%>