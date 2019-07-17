<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
<script src="../res/js/alert.js">
</script>
<script>
<%String findId = (String)session.getAttribute("userId");%>
var init = function(){
	if(<%=findId%>==null){
		$('#findUser').val('조회된ID');
	}else{
		$('#findUser').val('<%=findId%>');
<%
		session.setAttribute("userId", null);
%>		
	}
}
$(init);
</script>
<style>
@import "../res/css/header.css";
@import "../res/css/footer.css";
@import "../res/css/bodybasic.css";
.title{
	text-align: left;
}
.placeholder2 {
  text-align : center;
}
div {
	border: 1px solid white;
	text-align: center;
}
#QnA{
	margin-left: -0.5%;
	width: 80%;
}
input#findUser{
	border: 2px solid purple;
}
input#id{
 	margin-left: -123px;
}
#center{
	margin-left : 33%;
	margin-right: 1%;
}
input{
	width:80%;
	margin-left : -200px;
	color: purple;
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
hr#g{
	border: inset 2px rgb(228,228,228);
	margin-left: 0.2%;
	width: 79%;
}
</style>
	<div class="right-top">
		<ul class="breadcrumb" class="blacktext">
			<li><a href ="../main.jsp" class="text-muted">Home</a></li>
			<li><a href ="login.jsp" class="text-muted">로그인</a></li>
			<li><a href ="join.jsp" class="text-muted">회원가입</a></li>
		</ul>
	</div>
	<div class="logobox">
		<div id="img1"><img alt="로고" src="../res/img/yLogo.jpg" style="width:100%; height:auto;"></div>
		<a type="button" style="color:purple" href ="main.jsp"><h1>BookStore</h1></a>
	</div>
	<hr id="p">
<body>
<div class="bodyframe">
	<div class="container" id="body">
		<div class="title">
			<h1>아이디 찾기</h1><h4>|정보입력</h4>
		</div>
		<hr id="g">
		<p align="left">이름을 입력한뒤 답변을 작성하시면 ID가 조회됩니다.</p>
		<form>
		<div class="findUser">
			<div class="form-group">
				<input type="text" name="userName" class="form-contorl" placeholder="이름 입력" required/>
				</div>
		</div>
		<select class="form-control" id="QnA">
					<option>당신의 보물 제1호는?</option>
					<option>첫사랑의 이름은?</option>
					<option>가보고 싶은 여행지는?</option>
					<option>내가 나온 초등학교에 이름은?</option>
				</select>
				<br>
			<div class="form-group">
				<input type="text" name="userAnswer" class="form-contorl" id="answer" placeholder="답변 입력"/>				
			</div>
		<a href="login.jsp" class="btn btn-default" id="center">이전</a>
		<button type="submit" formaction="findUserProc.jsp" id="purple" class="btn btn-default">검색</button>
			</form>
		<br>
		<br><br>
			<div class="form-group">
				<input type="text" style="width:200px" name="userName" class="placeholder2" id="findUser"  value="<%= findId%>"/>
			</div>
	</div>
</div>
</body>
<footer>
<hr id="p">
<div>
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
<%@ include file='msg/msg.jsp'%>