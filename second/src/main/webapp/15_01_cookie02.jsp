<%@page import="org.apache.jasper.tagplugins.jstl.core.Remove"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
Cookie[] cookies=request.getCookies();

	if(cookies!=null){
		out.print("현재 설정된 쿠키의 개수 -> "+cookies.length+"<br>");
		out.print("==============================<br>");
		
		for(int i=0; i<cookies.length; i++){
			out.print("설정된 쿠키의 속성 이름 [ "+i+" ] : "+cookies[i].getName()+"<br>");
			out.print("설정된 쿠키의 속성 값 [ "+i+" ] : "+cookies[i].getValue()+"<br>");
			out.print("--------------------------------------------------<br>");
		}
	}else{
		out.print("쿠키가 없습니다.");
		out.print("<br><a href='15_01_cookie01.jsp'>쿠키 생성하기</a>");
	}
	
%>
</body>
</html>