<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@page buffer="1kb" autoFlush="false" %>
<%-- <%@page errorPage="/error/viewErrorMessage.jsp" %> --%>
<html>
<head>
<meta charset="UTF-8">
<title>버퍼 플러스 이후 에러 발생 결과</title>
</head>
<body>
<%for(int i=0; i<300; i++){
	out.println(i);
}
%>

<%=1/0 %>

<%-- <% --%>
<!-- String str=null; -->
<!-- str.toLowerCase(); -->
<!-- %> -->
</body>
</html>