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
<title>회원가입</title>

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
<body style="background-color: #e3e3e3">
	<form name="join" method="post" class="form-horizontal" role="form" autocomplete="off">
	<input type="hidden" name="idcheck" id="idcheck" value="N">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<h4 class="modal-title">
						<span class="glyphicon glyphicon-plus"></span>&nbsp;Join In
					</h4>
				</div>
				<div class="modal-body">
					<div class="form-group">
						<label class="col-lg-3 control-label">회원 ID</label>
						<div class="col-lg-5">
							<input name="userid" id="userid" type="text" class="form-control" placeholder="중복체크 버튼을 누르세요" readonly> 
							<input class="btn btn-default btn-xs" type="button" value="ID 중복체크" style="margin-top: 5px" onclick="openIDCheck()"> 
						</div>
					</div>
					<div class="form-group">
						<label class="col-lg-3 control-label">비밀번호</label>
						<div class="col-lg-4">
							<input name="password1" type="password" class="form-control"
								placeholder="Password">
						</div>
					</div>
					<div class="form-group">
						<label class="col-lg-3 control-label">비밀번호 확인</label>
						<div class="col-lg-4">
							<input name="password2" type="password" class="form-control"
								placeholder="Check Password">
						</div>
					</div>
					<hr>
					<div class="form-group">
						<label class="col-lg-3 control-label">성명</label>
						<div class="col-lg-4">
							<input name="username" type="text" class="form-control"
								placeholder="Name">
						</div>
					</div>
					<div class="form-group">
						<label class="col-lg-3"></label>
						<div class="col-lg-4">
							<input class="btn btn-default btn-sm" type="button" value="주소 찾기" style="margin-top: 5px" onclick="goFindZipcode()">
						</div>
					</div>
					<div class="form-group">
						<label class="col-lg-3 control-label">우편번호</label>
						<div class="col-lg-4">
							<input name="zipcode" id="zipcode" type="text" class="form-control"
								placeholder="Zip-Code" readonly>
						</div>
					</div>
					<div class="form-group">
						<label class="col-lg-3 control-label">주소</label>
						<div class="col-lg-7">
							<input name="address1" id="address1" type="text" class="form-control"
								placeholder="Address1" readonly>
						</div>
					</div>
					<div class="form-group">
						<label class="col-lg-3 control-label">상세주소</label>
						<div class="col-lg-7">
							<input name="address2" type="text" class="form-control"
								placeholder="Address2">
						</div>
					</div>
					<div class="form-group">
						<label class="col-lg-3 control-label">이메일</label>
						<div class="col-lg-6">
							<input name="email" type="email" class="form-control"
								placeholder="E-mail">
						</div>
					</div>
					<div class="form-group">
						<label class="col-lg-3 control-label">연락처</label>
						<div class="col-lg-4">
							<input name="phone" type="text" class="form-control"
								placeholder="Phone">
						</div>
					</div>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" onclick="javascript:history.back(-1)">취소</button>
					<button type="button" class="btn btn-primary" onclick="goJoin()">회원가입</button>
				</div>
			</div>
		</div>
	</form>
</body>
</html>