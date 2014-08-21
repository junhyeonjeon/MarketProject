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
<script type="text/javascript">
	var xmlReq; // 전역변수로 지정.
	//Ajax 객체 생성 과정
	function createAjax() {
		xmlReq = new XMLHttpRequest();
	}

	//Ajax 객체를 이용한 데이터 전송 과정
	function ajaxSend() {
		createAjax();
		var uid = document.getElementById("userid").value;
		xmlReq.onreadystatechange = callBack; // 괄호 열고닫고가 틀리다.!
		xmlReq.open("GET", "ajax_receive.jsp?uid=" + uid, true);
		xmlReq.send(null);
		// send가 끝나고나면 비동기식이기 때문에 프로그램이 계속 진행된다.
	}

	//콜백 함수 과정
	function callBack() {
		if (xmlReq.readyState == 4) {
			if (xmlReq.status == 200) {
				printData();
			}
		}
	}

	//결과 출력 과정
	function printData() {
		var result = xmlReq.responseXML;

		var rootNode = result.documentElement;
		// <root>true</root> , <root>false</root>
		var rootValue = rootNode.firstChild.nodeValue;
		var rootTag = document.getElementById("result");

		var idNode = rootNode.getElementsByTagName("id");
		var idValue = idNode.item(0).firstChild.nodeValue;
		var idTag = document.getElementById("idTxt");

		if (rootValue == "true") {
			rootTag.innerHTML = "사용 가능한 아이디";
			idTag.innerHTML = "<br>" + idValue;
		} else {
			rootTag.innerHTML = "중복된 아이디";
			idTag.innerHTML = "<br>" + idValue;
		}
	}
</script>

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
							<input name="userid" id="userid" type="text" class="form-control" placeholder="영문,숫자 조합" onkeyup="ajaxSend()">
							<h6><span id="result" style="color: red;"></span></h6>
							<!-- <input class="btn btn-default btn-xs" type="button" value="ID 중복체크" style="margin-top: 5px" onclick="openIDCheck()"> --> 
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
							<input name="password2" type="password" class="form-control" placeholder="Check Password">
								<h6><span id="result" style="color: red;"></span></h6>
						</div>
					</div>
					<hr>
					<div class="form-group">
						<label class="col-lg-3 control-label">닉네임</label>
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