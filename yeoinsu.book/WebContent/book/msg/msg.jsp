<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:choose>
	<c:when test="${param.msgId==0}">
		<script>
			alert('관리자님 환영합니다.', 'success');
		</script>
	</c:when>
	<c:when test="${param.msgId==51}">
		<script>
			alert('제목을 확인해 주십시오.', 'error');
		</script>
	</c:when>
	<c:when test="${param.msgId==10}">
		<script>
			alert('추가성공', 'success');
		</script>
	</c:when>
	<c:when test="${param.msgId==20}">
		<script>
			alert('수정성공', 'success');
		</script>
	</c:when>
	<c:when test="${param.msgId==21}">
		<script>
			alert('책을 선택해 주십시오.', 'error');
		</script>
	</c:when>
	<c:when test="${param.msgId==30}">
		<script>
			alert('삭제성공', 'success');
		</script>
	</c:when>
	<c:when test="${param.msgId==31}">
		<script>
			alert('책을 선택해 주십시오.', 'error');
		</script>
	</c:when>
	<c:when test="${param.msgId==40}">
		<script>
			alert('구매성공', 'success');
		</script>
	</c:when>
	<c:when test="${param.msgId==41}">
		<script>
			alert('책을 선택해 주십시오.', 'error');
		</script>
	</c:when>
</c:choose>