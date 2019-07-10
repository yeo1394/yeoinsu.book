<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:choose>
	<c:when test="${param.msgId==11}">
		<script>
			alert('회원가입이 완료되었습니다.', 'success');
		</script>
	</c:when>
	<c:when test="${param.msgId==0}">
		<script>
			alert('중복된 아이디입니다.', 'error');
		</script>
	</c:when>
	<c:when test="${param.msgId==21}">
		<script>
			alert('아이디가 없습니다.', 'error');
		</script>
	</c:when>
	<c:when test="${param.msgId==22}">
		<script>
			alert('비밀번호가 틀립니다.', 'error');
		</script>
	</c:when>
	<c:when test="${param.msgId==23}">
		<script>
			alert('관리자님 환영합니다.', 'success');
		</script>
	</c:when>
</c:choose>