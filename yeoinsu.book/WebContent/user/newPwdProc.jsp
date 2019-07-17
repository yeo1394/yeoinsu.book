<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page import="yeoinsu.bookstore.member.login.domain.Member"%>
<%@page
	import="yeoinsu.bookstore.member.login.service.MemberServiceImpl"%>
<%@page import="yeoinsu.bookstore.member.login.service.MemberService"%>
<%
 	String nowId = (String) session.getAttribute("nowId");
	MemberService memberService = new MemberServiceImpl();
	String newPw = request.getParameter("newPwd");
	memberService.correctPwd(new Member(nowId, newPw, null, null));
%>
	<c:redirect url="login.jsp?msgId=110"/>