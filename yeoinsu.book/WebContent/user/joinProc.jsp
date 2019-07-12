<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page import="yeoinsu.bookstore.member.login.domain.Member"%>
<%@page
	import="yeoinsu.bookstore.member.login.service.MemberServiceImpl"%>
<%@page import="yeoinsu.bookstore.member.login.service.MemberService"%>
<%
	String userId = request.getParameter("userId");
	String userPw = request.getParameter("userPw");
	String userName = request.getParameter("userName");
	String userAnswer = request.getParameter("userAnswer");
	MemberService memberService = new MemberServiceImpl();
	Member dbUser = memberService.getLogin(userId);
	
	if (dbUser != null) {
%>
		<c:redirect url="join.jsp?msgId=11" />
<%
	}else{
		memberService.join(new Member(userId, userPw, userName,userAnswer));
%>
		<c:redirect url="../main.jsp?msgId=10" />
<%
	}
%>
