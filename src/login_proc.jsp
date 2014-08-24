<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ page import="com.sun.xml.internal.bind.v2.runtime.Location"%>
<%@ page import="com.myhome.member.*"%>

<%
	request.setCharacterEncoding("euc-kr");
	String userid = request.getParameter("userid");
	String password = request.getParameter("password");
	String pageName = request.getParameter("pageName");
	String username = "";
	MemberDao dao = new MemberDao();

	boolean check = false;
	check = dao.login(userid, password);

	if (check == true) {
		session.setAttribute("userid", userid);
		username = dao.getName(userid);
		session.setAttribute("username", username);
%>
<script type="text/javascript">
	location.href = <%if (!pageName.equals("") && pageName != null) {%>
							'<%=pageName%>';
					<%} else {%>
							'index.jsp';
					<%}%>
</script>
<%
	} else {
%>
<script type="text/javascript">
	alert("로그인 정보가 잘못되었습니다");
	location.href = <%if (!pageName.equals("") && pageName != null) {%>
							'<%=pageName%>';
					<%} else {%>
							'index.jsp';
					<%}%>
</script>
<%
	}
%>