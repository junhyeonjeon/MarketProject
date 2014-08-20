<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ page import="com.myhome.member.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<%
		MemberDto dto = new MemberDto();
		MemberDao dao = new MemberDao();
		request.setCharacterEncoding("EUC-KR");
	
		dto.setUserid(request.getParameter("userid"));
		dto.setPassword(request.getParameter("password1"));
		dto.setUsername(request.getParameter("username"));
		dto.setZipcode(request.getParameter("zipcode"));
		dto.setAddress1(request.getParameter("address1"));
		dto.setAddress2(request.getParameter("address2"));
		dto.setEmail(request.getParameter("email"));
		dto.setPhone(request.getParameter("phone"));

		dao.insert(dto);
	%>
	<script type="text/javascript">
		alert("회원가입 성공! 홈화면으로 이동됩니다...");
		location.replace('./index.jsp');
	</script>
</body>
</html>