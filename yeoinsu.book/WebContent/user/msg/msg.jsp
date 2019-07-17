<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:choose>
	<c:when test="${param.msgId==10}">
		<script>
			alert('회원가입이 완료되었습니다.', 'success');
		</script>
	</c:when>
	<c:when test="${param.msgId==11}">
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
	<c:when test="${param.msgId==20}">
		<script>
			alert('관리자님 환영합니다.', 'success');
		</script>
	</c:when>
	<c:when test="${param.msgId==30}">
		<script>
			alert('회원정보가 수정되었습니다.', 'success');
		</script>
	</c:when>
	<c:when test="${param.msgId==40}">
		<script>
			alert('구매 성공.', 'success');
		</script>
	</c:when>
	<c:when test="${param.msgId==41}">
		<script>
			alert('책을 선택해주십시오.', 'error');
		</script>
	</c:when>
	<c:when test="${param.msgId==50}">
		<script>
			alert('회원 탈퇴가 완료되었습니다.', 'success');
		</script>
	</c:when>
		<c:when test="${param.msgId==100}">
		<script>
			alert('아이디가 조회되었습니다.', 'success');
		</script>
	</c:when>
	<c:when test="${param.msgId==101}">
		<script>
			alert('일치하는 정보가 없습니다.', 'error');
		</script>
	</c:when>
	<c:when test="${param.msgId==110}">
		<script>
			alert('비밀번호가 변경되었습니다.', 'success');
		</script>
	</c:when>
	<c:when test="${param.msgId==111}">
		<script>
			alert('입력하신 정보가 일치하지 않습니다.', 'error');
		</script>
	</c:when>
	
</c:choose>