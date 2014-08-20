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
<title>ID 중복검사</title>

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
		String msg = "원하시는 ID를 입력 후<br>Check버튼을 눌러주세요";
		String checker = "N";

		if (userid != null && !userid.equals("")) {
			MemberDao dao = new MemberDao();
			if (dao.isExist(userid)) {
				msg = "이미 사용중인 아이디 입니다";
				checker = "N";
			} else {
				msg = "사용해도 좋은 아이디 입니다";
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
						<label class="col-lg-3 control-label">ID 입력</label>
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
					<button type="button" class="btn btn-default" onclick="self.close()">닫기</button>
					<%if(checker.equals("Y")){%>
						<button type="button" class="btn btn-primary" onclick="closeIDCheck()">사용하기</button>
					<%} %>
				</div>
			</div>
		</div>
	</form>
</body>
</html>