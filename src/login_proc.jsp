<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ page import="com.sun.xml.internal.bind.v2.runtime.Location"%>
<%@ page import="com.myhome.member.*"%>

<%
	request.setCharacterEncoding("euc-kr");
	String userid = request.getParameter("userid");
	String password = request.getParameter("password");
	MemberDao dao = new MemberDao();

	boolean check = false;
	check = dao.login(userid, password);

	if (check == true) {
		session.setAttribute("userid", userid);
%>
<script type="text/javascript">
	location.replace('./index.jsp');
</script>
<%
	} else {
%>
<script type="text/javascript">
	alert("�α��� ������ �߸��Ǿ����ϴ�");
	location.replace('./index.jsp');
</script>
<%
	}
%>