<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@page import="java.io.*,java.net.URL" %>
<html>
<head>
<meta charset="UTF-8">
<title>application 기본 객체 사용하여 자원 읽기</title>
</head>
<body>
<%
String resourcePath="/message/notice.txt";
//URL url=application.getResource(resourcePath);
URL url=new URL("https://www.naver.com");
%>
자원의 실제 경로:<br>
<%=application.getRealPath(resourcePath) %><br>
<%=url %>
<br>
------------<br>
<%= resourcePath %>의 내용<br>
------------<br>
<%
char[] buff=new char[128];
int len=-1;
try{
	InputStreamReader br=
	new InputStreamReader(application.getResourceAsStream(resourcePath),"utf-8");
	while((len=br.read(buff))!=-1){
		out.print(new String(buff,0,len));
	}
	out.print("<br>");
	br.close();
}catch(IOException ex){
	out.println("익셉션 발생: "+ex.getMessage());
} try{
	InputStreamReader br=new InputStreamReader(url.openStream(),"utf-8");
	while((len=br.read(buff))!=-1){
		out.write(new String(buff,0,len));
	}
	out.print("<br>");
	br.close();
}catch(IOException ex){
	out.println("익셉션 발생: "+ex.getMessage());
}
%>
</body>
</html>