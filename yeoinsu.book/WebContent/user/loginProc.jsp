<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page import="yeoinsu.bookstore.member.login.domain.Member"%>
<%@page
	import="yeoinsu.bookstore.member.login.service.MemberServiceImpl"%>
<%@page import="yeoinsu.bookstore.member.login.service.MemberService"%>
<%
 	MemberService memberService = new MemberServiceImpl();
	String nowId = request.getParameter("userId");
	String nowPw = request.getParameter("userPw");
 	Member dbUser = memberService.getLogin(nowId);
 	
 	if (nowId != null && !nowId.equals("")){
 		if(!dbUser.getUserId().equals(nowId)){
%>
			<c:redirect url="login.jsp?msgId=21"/>
<%
 		}
 		if(dbUser.getUserId().equals(nowId) && !dbUser.getUserPw().equals(nowPw)){
%>
 			<c:redirect url="login.jsp?msgId=22"/>
<% 
 		}
 		if(dbUser.getUserId().equals(nowId) && !dbUser.getUserPw().equals(nowPw)){
			if(nowId.equals("admin") && nowId.equals("admin")){
%>
				<c:redirect url="../book/adminMain.jsp?msgId=23" />
<% 
 			}else{
%> 			
				<c:redirect url="userMain.jsp" /> 				
<%
			}
 		}
 	}
%>