<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ page import="com.myhome.member.*"%>
<%
	request.setCharacterEncoding("euc-kr");
	String name = request.getParameter("username");
	String sql = "";
	sql = "select count(*) from member where username='" + name + "'";

	StringBuffer str = new StringBuffer();
	str.append("<?xml version='1.0' encoding='euc-kr'?>");
	str.append("<root>");

	if (name != null && !name.equals("")) {
		MemberDao dao = new MemberDao();
		if (dao.isExist(sql)) {
			str.append("false");
		} else {
			str.append("true");
		}
	}
	str.append("<id>" + name + "</id>");
	str.append("</root>");

	response.setContentType("text/xml;charset=euc-kr");
	response.getWriter().write(str.toString());
%>