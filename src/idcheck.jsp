<%@page import="com.myhome.member.MemberDao"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1.0, user-scalable=no">
<meta name="description" content="">
<meta name="author" content="">
<title>ID �ߺ��˻�</title>

<!-- CSS -->
<link href="./css/bootstrap.min.css" rel="stylesheet">
<link href="./assets/css/docs.css" rel="stylesheet">

<!-- jQuery Version 1.11.0 -->
<script src="js/jquery-1.11.0.js"></script>

<!-- Bootstrap Core JavaScript -->
<script src="js/bootstrap.min.js"></script>

<!-- script -->
<script type="text/javascript" src="./js/member.js"></script>

</head>
<body style="padding-top: 15px">

	<%
		String userid = request.getParameter("userid");
		String msg = "���Ͻô� ID�� �Է� ��<br>Check��ư�� �����ּ���";
		String checker = "N";

		if (userid != null && !userid.equals("")) {
			MemberDao dao = new MemberDao();
			if (dao.isExist(userid)) {
				msg = "�̹� ������� ���̵� �Դϴ�";
				checker = "N";
			} else {
				msg = "����ص� ���� ���̵� �Դϴ�";
				checker = "Y";
			}
		}
	%>

	<form name="idcheck_form" method="post" class="form-horizontal" role="form">
		<div class="modal-dialog" style="margin-top: 0px;">
			<div class="modal-content">
				<div class="modal-header">
					<h4 class="modal-title">
						<span class="glyphicon glyphicon-ok"></span>&nbsp;ID Check
					</h4>
				</div>
				<div class="modal-body">
					<div class="form-group">
						<label class="col-lg-3 control-label">ID �Է�</label>
						<div class="col-lg-6">
							<div class="input-group">
								<input name="userid" type="text" class="form-control"
								<%if(userid!=null && !userid.equals("")){ %>
									value=<%=userid%>
								<%} %>
									> 
								<span class="input-group-btn">
									<button class="btn btn-default" type="button" onclick="goCheck()">Check</button>
								</span>
							</div>
						</div>
						<div class="col-lg-6" style="text-align: center;">
							<label class="control-label" style="margin-top: 10px; color: red; text-align: center;">
								<h6>
									<%=msg%>
								</h6>
							</label>
						</div>
					</div>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" onclick="self.close()">�ݱ�</button>
					<%if(checker.equals("Y")){%>
						<button type="button" class="btn btn-primary" onclick="closeIDCheck()">����ϱ�</button>
					<%} %>
				</div>
			</div>
		</div>
	</form>
</body>
</html>