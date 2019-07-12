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
	margin-left: 10%;
	margin-bottom: 10%;
}

div {
	border: 1px solid white;
	text-align: center;
}

input {
	width: 100%;
	margin-bottom: 3px;
}

#list {
	width: 80%;
	left: 10%;
}

#logBtn {
	width: 100%;
	height: 60px;
}

div#logBox {
	margin-left: 180px;
	margin-top: 130px;
	width: 70%;
	border: 1px solid white;
}

nav.btnList {
	margin-left: -30%;
}
</style>
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
	<div class="all">
		<div id="bodyframe">
			<div class="container" id="body">
				<div class="col-md-5" id="logBox">
					<form>
						<div class="row">
							<div class="col-md-8">
								<h2>로그인</h2>
								<hr>
								<input type="text" name="userId" class="form-control"
									placeholder="아이디 입력" required maxlength="20"> <input
									type="password" name="userPw" class="form-control"
									placeholder="패스워드 입력" required maxlength="20"> <br>
							</div>
							<div class="col-md-3">
								<br> <br> <br> <br> <br> <a
									href="00.html">
									<button type="submit" formaction="loginProc.jsp" class="btn btn-default" id="logBtn">로그인</button>
								</a>
							</div>
							<div class="row">
								<div class="col-md-12">
									<nav class="btnList">
										<a href="join.jsp">회원가입</a> <span>&#124;</span> <a
											href="findUser.jsp">아이디찾기</a> <span>&#124;</span> <a
											href="findPwd.jsp">비밀번호찾기</a>
									</nav>
								</div>
							</div>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
</body>
<hr>
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