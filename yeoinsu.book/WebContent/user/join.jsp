<%@page import="yeoinsu.bookstore.member.login.service.MemberServiceImpl"%>
<%@page import="yeoinsu.bookstore.member.login.service.MemberService"%>
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
	src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/1.1.3/sweetalert.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<script src="../res/js/alert.js"></script>
<style>
@import "../res/css/header.css";

@import "../res/css/footer.css";

@import "../res/css/bodybasic.css";

div.allbody {
	border: 3px solid white;
	margin-left: 9%;
}

.title {
	text-align: left;
}

div {
	border: 1px solid white;
	text-align: center;
}

#QnA {
	margin-left: 1.2%;
	width: 80%;
}

input#id {
	margin-left: -200px;
}

#center {
	margin-left: -17%;
}

input {
	width: 80%;
	margin-left: -200px;
}

#list {
	width: 80%;
	left: 10%;
}

.title h1, h4 {
	display: inline;
	text-align: left;
}

p#left {
	margin-left: -72%;
}
</style>
</head>
<div class="right-top">
	<ul class="breadcrumb" class="blacktext">
		<li><a href="../main.jsp" class="text-muted">Home</a></li>
		<li><a href="login.jsp" class="text-muted">로그인</a></li>
		<li><a href="join.jsp" class="text-muted">회원가입</a></li>
	</ul>
</div>
<div class="logobox">
	<div id="img1"></div>
	<a type="button" style="color: purple" href="../main.jsp"><h1>Y
			BookStore</h1></a>
</div>
<body>
	<div class="allbody">
		<div class="bodyframe">
			<div class="container" id="body">
				<div class="title">
					<h1>구매 회원가입</h1>
					<h4>|정보입력</h4>
				</div>
				<hr>
				<p id="left">회원 정보를 모두 입력해야 가입이 가능합니다.</p>
				<form name="userForm">
					<div class="addUser">
						<div class="form-group">
							<input type="text" name="userId" class="form-contorl" id="id"
								placeholder="아이디 입력" required maxlength="10"/>
						</div>
						<div class="form-group">
							<input type="password" name="userPw" class="form-contorl"
								id="pwd1" placeholder="비밀번호 입력" required maxlength="20"/>
						</div>
						<div class="form-group">
							<input type="text" name="userName" class="form-contorl" id="name"
								placeholder="이름" required maxlength="5"/>
						</div>
					</div>
					<select class="form-control" id="QnA">
						<option>당신의 보물 제1호는?</option>
						<option>첫사랑의 이름은?</option>
						<option>가보고 싶은 여행지는?</option>
						<option>내가 나온 초등학교에 이름은?</option>
					</select> <br>
					<div class="form-group">
						<input type="text" name="userAnswer" class="form-contorl"
							id="answer" placeholder="답변 입력" maxlength="25" required/>
					</div>
					<a href="../main.jsp" class="btn button-default" id="center">메인으로</a>
					<button formaction="joinProc.jsp" class="btn button-default" type="submit" id="join">확인</button>
				</form>
			</div>
		</div>
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
<%@ include file='msg/msg.jsp'%>