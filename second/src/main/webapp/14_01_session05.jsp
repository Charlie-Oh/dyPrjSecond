<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="java.util.Enumeration"%>
<html>
<head>
<title>Session</title>
</head>
<body>
	<h4>----- 세션을 삭제하기 전 -----</h4>

	<%
		String name;
		String value;

		Enumeration en = session.getAttributeNames(); //"userID", "userPW"
		int i = 0;

		while (en.hasMoreElements()) {
			i++; //2
			name = en.nextElement().toString(); //"userPW"
			value = session.getAttribute(name).toString(); //"1234"
			out.println("설정된 세션 이름 [ " + i + " ] : " + name + "<br>");
			out.println("설정된 세션 값 [ " + i + " ] : " + value + "<br>");
		}

		session.removeAttribute("userID");
	%>

	<h4>----- 세션을 삭제한 후 -----</h4>
	<%
		en = session.getAttributeNames(); //"userPW"

		i = 0;
		while (en.hasMoreElements()) {
			i++;
			name = en.nextElement().toString();
			value = session.getAttribute(name).toString();
			out.println("설정된 세션 이름 [ " + i + " ] : " + name + "<br>");
			out.println("설정된 세션 값 [ " + i + " ] : " + value + "<br>");
		}
	%>
</body>
</html>