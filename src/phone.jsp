<%@page import="com.myhome.member.*"%>
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
<title>�޴��� ����</title>

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
		String phone = request.getParameter("phone");
		String msg = "( - ) �� ������ ���ڸ� �Է����ּ���";
		String checker = "N";
		String sql = "select count(*) from member where phone='" + phone
				+ "'";
		int ranNum = 0;

		if (phone != null && !phone.equals("")) {
			MemberDao dao = new MemberDao();
			if (dao.isExist(sql)) {
				msg = "�̹� ������� ��ȣ �Դϴ�";
				checker = "N";
			} else {
				ranNum = (int) (Math.random() * (9999 - 1000 + 1)) + 1000;
				msg = "���۵� ������ȣ�� �Է� �� '�Է¿Ϸ�' ��ư�� �����ּ���";
				checker = "Y";
			}
		}
	%>

	<form name="phonecheck_form" method="post" class="form-horizontal"
		role="form">
		<div class="modal-dialog" style="margin-top: 0px;">
			<div class="modal-content">
				<div class="modal-header">
					<h4 class="modal-title">
						<span class="glyphicon glyphicon-ok"></span>&nbsp;Phone Check
					</h4>
				</div>
				<div class="modal-body">
					<div class="form-group">
						<label class="col-lg-3 control-label">�޴��� ��ȣ �Է�</label>
						<div class="col-lg-6">
							<div class="input-group">
								<input name="phone" id="phone" type="text" class="form-control"
									<%if (phone != null && !phone.equals("")) {%> value=<%=phone%>
									<%}%>> 
									<span class="input-group-btn">
									<button class="btn btn-default" type="button"
										onclick="goCheck()">������ȣ �ޱ�</button>
								</span>
							</div>
						</div>
						<div class="col-lg-6" style="text-align: center;">
							<label class="control-label"
								style="margin-top: 10px; color: red; text-align: center;">
								<h6>
									<%=msg%>
								</h6>
								<h6>
									<%
										if (ranNum >= 1000) {
									%>
									<label name="ranNum" id="ranNum">�׽�Ʈ�� : <%=ranNum%></label>
									<%
										}
									%>
								</h6>
							</label>
						</div>

						<%
							if (checker.equals("Y")) {
						%>
						<label class="col-lg-3 control-label">������ȣ �Է�</label>
						<div class="col-lg-6">
							<div class="input-group">
								<input name="certNum" id="certNum" type="text"
									class="form-control" onblur="CheckCert()"> <span
									class="input-group-btn">
									<button class="btn btn-default btn-primary" type="button"
										onclick="goCertCheck(<%=ranNum%>)">�Է¿Ϸ�</button>
								</span>
							</div>
						</div>
						<%
							}
						%>
					</div>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default"
						onclick="self.close()">�ݱ�</button>
				</div>
			</div>
		</div>
	</form>
</body>
</html>