<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page import="yeoinsu.bookstore.member.login.domain.Member"%>
<%@page
	import="yeoinsu.bookstore.member.login.service.MemberServiceImpl"%>
<%@page import="yeoinsu.bookstore.member.login.service.MemberService"%>
<%
 	MemberService memberService = new MemberServiceImpl();
	String nowName = request.getParameter("userName");
	String nowAnswer = request.getParameter("userAnswer");
	Member dbUser = memberService.getSearchId(new Member(nowName, nowAnswer));
 	if(dbUser!=null){
 		session.setAttribute("userId", dbUser.getUserId());
 %>
		<c:redirect url="findUser.jsp?msgId=100"/>
 <%
 	}else{
%>
		<c:redirect url="findUser.jsp?msgId=101"/>
<%
	} 
%>
