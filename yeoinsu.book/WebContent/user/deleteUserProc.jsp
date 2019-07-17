<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page
	import="yeoinsu.bookstore.member.login.service.MemberServiceImpl"%>
<%@page import="yeoinsu.bookstore.member.login.service.MemberService"%>
<%
	String nowId = (String) session.getAttribute("nowId");
	System.out.println(nowId);
	MemberService memberService = new MemberServiceImpl();
	if(memberService.secedeUser(nowId)){
%>
		<c:redirect url="../main.jsp?msgId=50"/>
<% 
	}
%>		
	