<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ page import="com.sun.xml.internal.bind.v2.runtime.Location"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
</head>
<body>
	<%
		String pageName = (String) session.getAttribute("pageName");
		System.out.println(pageName);
	%>
	<%
		//모든 세션을 초기화한다.
		session.invalidate();
	%>
	<script type="text/javascript">
	location.replace(<%if (!pageName.equals("") && pageName != null) {%>
	'<%=pageName%>'
	<%} else {%>
		'index.jsp'
	<%}%>
	);
		
	</script>
</body>
</html>