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
	String nowId = request.getParameter("userId");
	String nowAnswer = request.getParameter("userAnswer");
 	System.out.println(nowName);
 	System.out.println(nowId);
 	System.out.println(nowAnswer);
 	Member dbPwd = memberService.getSearchPwd(new Member(nowName, nowId, nowAnswer));
 	if(dbPwd!=null){
				session.setAttribute("nowId", dbPwd.getUserId());
%>
	<c:redirect url="newPwd.jsp"/>
<%
	}else{
%>
	<c:redirect url="findPwd.jsp?msgId=111"/>
<%
	}
%>