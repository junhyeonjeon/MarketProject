<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ page import="com.myhome.member.*"%>
<%
	request.setCharacterEncoding("euc-kr");

	String type = request.getParameter("type");
	String value = request.getParameter("value");
	String sql = "";

	if (type.equals("userid")) {
		System.out.println(type);
		sql = "select count(*) from member where userid='" + value
				+ "'";
	} else if (type.equals("username")) {
		sql = "select count(*) from member where username='" + value
				+ "'";
	} else if (type.equals("email")) {
		sql = "select count(*) from member where email='" + value + "'";
	}

	StringBuffer str = new StringBuffer();
	str.append("<?xml version='1.0' encoding='euc-kr'?>");
	str.append("<root>");

	if (value != null && !value.equals("")) {
		MemberDao dao = new MemberDao();
		if (dao.isExist(sql)) {
			str.append("false");
		} else {
			str.append("true");
		}
	}
	str.append("<id>" + value + "</id>");
	str.append("</root>");

	response.setContentType("text/xml;charset=euc-kr");
	response.getWriter().write(str.toString());
%>