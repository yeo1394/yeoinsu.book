<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page import="yeoinsu.bookstore.member.login.domain.Member"%>
<%@page import="yeoinsu.bookstore.member.login.service.MemberServiceImpl"%>
<%@page import="yeoinsu.bookstore.member.login.service.MemberService"%>
<%
	String newId = request.getParameter("userId");
	String newPw = request.getParameter("userPw");
	String newAnswer = request.getParameter("userAnswer");
	MemberService memberService = new MemberServiceImpl();
	
	if(memberService.correctUser(new Member(newId,newPw,newAnswer))){
%>
		<c:redirect url="userMain.jsp?msgId=30"/>
<%
	}
%>	
	