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
<script>
<%String nowId = (String) session.getAttribute("nowId");
			String nowName = (String) session.getAttribute("nowName");%>
</script>
<style>
@import "../res/css/header.css";

@import "../res/css/footer.css";

@import "../res/css/bodybasic.css";

div.ans{
	margin-left: 0.5%;
}

div.pw{
	margin-left: -1.3%;
}
.title {
	text-align: left;
}

div.all{
	border: 1px solid white;
	text-align: left;
	margin-left: -8%;
}

div {
	border: 1px solid white;
	text-align: center;
}

#QnA {
	margin-left: 12%;
	width: 80%;
}

button#update {
	margin-top: 4%;
	margin-left: 36%;
	margin-right: 2%;
	float: left;
}

a#center {
	margin-top: 4%;
}

input#pwd1{
	width: 79%;
}

input {
	width: 80%;
}

#list {
	width: 80%;
	left: 11%;
}

div#body {
	margin-top: 3%;
	display: inline-block;
	width: 90%;
	height: 450px;
	margin-left: 150px;
	border: 1px solid white;
	text-align: left;
}

div.bodyframe {
	width: 100%;
	padding: 81px;
}

.title h1, h4 {
	display: inline;
	text-align: left;
}
</style>
<div class="right-top">
	<ul class="breadcrumb" class="blacktext">
		<li><a href="userMain.jsp" class="text-muted">Home</a></li>
		<li><a href="../main.jsp" class="text-muted">로그아웃</a></li>
		<li><a href="update.jsp" class="text-muted">회원정보관리</a></li>
		<li><a href="#" class="text-muted"
			onClick="alert('회원탈퇴','정말 탈퇴하시겠습니까?','warning')">회원탈퇴</a></li>
	</ul>
</div>
<div class="logobox">
	<div id="img1"></div>
	<a type="button" style="color: purple" href="userMain.jsp"><h1>Y
			BookStore</h1></a>
</div>
<body>
	<div class="bodyframe">
		<div class="container" id="body">
			<div class="title">
				<h1>회원정보관리</h1>
				<h4>|회원정보수정</h4>
			</div>
			<hr>
			<p algin="left">회원정보수정 후 수정버튼을 눌러주세요.</p>
			<form>
				<div class="all">
					<div>
						아이디 &nbsp;<input type="text" name="userId" class="form-contorl" id="id"
							value="<%=nowId%>" readonly />
					</div>
					<br>
					<div>
						이 &nbsp;름 &nbsp;&nbsp;<input type="text" name="userName" class="form-contorl" id="Name"
							 value="<%=nowName%>" readonly />
					</div>
					<br>
					<div class="pw">
						비밀번호 <input type="password" name="userPw" class="form-contorl"
							id="pwd1" placeholder="새로운 비밀번호 입력" required />
					</div>
					<br>
					<div>
						<select class="form-control" id="QnA">
							<option>당신의 보물 제1호는?</option>
							<option>2</option>
							<option>3</option>
							<option>4</option>
						</select>
					</div>
					<br>
					<div class="ans">
						답변 &nbsp;<input type="text" name="userAnswer" class="form-contorl"
							id="answer" placeholder="새로운 답변 입력" required />
					</div>
					<button formaction="updateProc.jsp" class="btn btn-default"
						type="submit" id="update">수정</button>
				</div>
			</form>
					<a type="button" href="userMain.jsp" class="btn btn-default" id="center">메인으로</a>
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