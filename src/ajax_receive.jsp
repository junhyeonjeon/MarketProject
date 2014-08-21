<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ page import="com.myhome.member.*"%>
<%
	String uid = request.getParameter("uid");

	System.out.println(uid);

	StringBuffer str = new StringBuffer();
	str.append("<?xml version='1.0' encoding='euc-kr'?>");
	str.append("<root>");

	if (uid != null && !uid.equals("")) {
		MemberDao dao = new MemberDao();
		if (dao.isExist(uid)) {
			str.append("false");
		} else {
			str.append("true");
		}
	}
	str.append("<id>" + uid + "</id>");
	str.append("</root>");

	response.setContentType("text/xml;charset=euc-kr");
	response.getWriter().write(str.toString());
%>