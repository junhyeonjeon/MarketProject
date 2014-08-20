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
<title>Insert title here</title>

<!-- CSS -->
<link href="./css/bootstrap.min.css" rel="stylesheet">
<link href="./css/style-kustom.css" rel="stylesheet">
<link href="./assets/css/docs.css" rel="stylesheet">

<!-- jQuery Version 1.11.0 -->
<script src="js/jquery-1.11.0.js"></script>

<!-- Bootstrap Core JavaScript -->
<script src="js/bootstrap.min.js"></script>

<!-- �����ȭ�� ��¿� -->
<!-- 
<script type="text/javascript">
	var mobileKeyWords = new Array('iPhone', 'iPod', 'BlackBerry', 'Android',
			'Windows CE', 'LG', 'MOT', 'SAMSUNG', 'SonyEricsson');
	for ( var word in mobileKeyWords) {
		if (navigator.userAgent.match(mobileKeyWords[word]) != null) {
			location.href = "���ٰ������";
			break;
		}
	}
</script> 
-->

<!-- script -->
<script type="text/javascript" src="./js/member.js"></script>

</head>

<body>
	<%
		//�α��� üũ
		String userid = "";
		userid = (String) session.getAttribute("userid");
	%>

	<!-- �׺���̼ǹ� : ���� -->
	<nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
	<div class="container">
		<div class="navbar-header">
			<!-- ����� ũ���� �� �׺���̼ǹٸ� �ѹ�ư���� ���� �ִ� ���(Ÿ���� id���� �ش�Ǵ� ����� ������ش�) -->
			<button type="button" class="navbar-toggle" data-toggle="collapse"
				data-target="#bs-example-navbar-collapse-1">
				<span class="sr-only">Toggle navigation</span> <span
					class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="./index.jsp">HOME</a>
		</div>

		<!-- id�� �־� �ڹٽ�ũ��Ʈ�� ����� ȭ�鿡�� �׺�ٹ�ư�� ���۵ǰ� �Ѵ� -->
		<div class="collapse navbar-collapse"
			id="bs-example-navbar-collapse-1">
			<ul class="nav navbar-nav">
				<li><a href="./board.jsp">board</a></li>
				<li><a href="#">menu2</a></li>
				<li><a href="#">menu3</a></li>
			</ul>
			<ul class="nav navbar-nav navbar-right">
				<!-- �ڹٽ�ũ��Ʈ�� if���� ����Ͽ� �α��εǾ����� �ȵǾ������� ���� -->
				<%
					//�α����� �Ǿ�������
					if (userid != null && !userid.equals("")) {
				%>
				<li><a href="#"><span class="glyphicon glyphicon-user"></span>&nbsp;<%=userid%>&nbsp;��</a></li>
				<li><a href="./logout_proc.jsp"><span
						class="glyphicon glyphicon-log-out"></span>&nbsp;�α׾ƿ�</a></li>
				<%
					//�α����� �Ǿ����� �ʴٸ�
					} else {
				%>
				<li><a data-toggle="modal" href="#loginModal"> <span
						class="glyphicon glyphicon-log-in"></span>&nbsp;�α���
				</a></li>
				<li><a data-toggle="modal" href="./join.jsp"> <span
						class="glyphicon glyphicon-plus"></span>&nbsp;ȸ������
				</a></li>
				<%
					}
				%>
			</ul>
		</div>
	</div>
	</nav>
	<!-- �׺���̼ǹ� : �� -->

	<!-- �α��θ�� : ���� -->
	<div class="modal fade" id="loginModal" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel" aria-hidden="true">
		<form name="login_form" method="post" class="form-horizontal"
			role="form">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal"
							aria-hidden="true">��</button>
						<h4 class="modal-title">
							<span class="glyphicon glyphicon-log-in"></span>&nbsp;LOGIN
						</h4>
					</div>
					<div class="modal-body">
						<div class="form-group">
							<label for="inputId" class="col-lg-3 control-label">ȸ�� ID</label>
							<div class="col-lg-6">
								<input name="userid" type="text" class="form-control"
									placeholder="User ID" tabindex="1">
							</div>
							<div class="col-lg-3">
								<a href="#" tabindex="4"><h6>���̵� ã��</h6></a>
							</div>
						</div>
						<div class="form-group">
							<label for="inputPassword1" class="col-lg-3 control-label">��й�ȣ</label>
							<div class="col-lg-6">
								<input name="password" type="password" class="form-control"
									placeholder="Password" tabindex="2">
							</div>
							<div class="col-lg-3">
								<a href="#" tabindex="5"><h6>��й�ȣ ã��</h6></a>
							</div>
						</div>
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-default" data-dismiss="modal"
							tabindex="6">���</button>
						<button type="button" class="btn btn-primary"
							onclick="login_check()" tabindex="3">�α���</button>
					</div>
				</div>
			</div>
		</form>
	</div>
	<!-- �α��θ�� : �� -->

	<!-- 
	ȸ�����Ը�� : ����
	<div class="modal fade" id="joinModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
		<form name="join" class="form-horizontal" role="form" autocomplete="off">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal" aria-hidden="true">��</button>
						<h4 class="modal-title">
							<span class="glyphicon glyphicon-plus"></span>&nbsp;Join In
						</h4>
					</div>
					<div class="modal-body">
						<div class="form-group">
							<label class="col-lg-3 control-label">ȸ�� ID</label>
							<div class="col-lg-4">
								<input name="userid" id="userid" type="text" class="form-control" placeholder="User ID"> 
								<input class="btn btn-default btn-xs" type="button" value="ID �ߺ�üũ" style="margin-top: 5px">
								<label name="result-idcheck" type="label" style="margin-top:3px; color: red;"><h6>�ߺ�Ȯ�ΰ�� ���</h6></label>
							</div>
						</div>
						<div class="form-group">
							<label class="col-lg-3 control-label">��й�ȣ</label>
							<div class="col-lg-4">
								<input name="password1" type="password" class="form-control" placeholder="Password">
							</div>
						</div>
						<div class="form-group">
							<label class="col-lg-3 control-label">��й�ȣ Ȯ��</label>
							<div class="col-lg-4">
								<input name="password2" type="password" class="form-control" placeholder="Check Password">
							</div>
						</div>
						<hr>
						<div class="form-group">
							<label class="col-lg-3 control-label">����</label>
							<div class="col-lg-4">
								<input name="username" type="text" class="form-control" placeholder="Name">
							</div>
						</div>
						<div class="form-group">
							<label class="col-lg-3"></label>
							<div class="col-lg-4">
								<input class="btn btn-default btn-sm" type="button" value="�ּ� ã��" style="margin-top: 5px">
							</div>
						</div>
						<div class="form-group">
							<label class="col-lg-3 control-label">�����ȣ</label>
							<div class="col-lg-4">
								<input name="zipcode" type="text" class="form-control" placeholder="Zip-Code" readonly>
							</div>
						</div>
						<div class="form-group">
							<label class="col-lg-3 control-label">�ּ�</label>
							<div class="col-lg-7">
								<input name="address1" type="text" class="form-control"	placeholder="Address1" readonly>
							</div>
						</div>
						<div class="form-group">
							<label class="col-lg-3 control-label">���ּ�</label>
							<div class="col-lg-7">
								<input name="address2" type="text" class="form-control"	placeholder="Address2">
							</div>
						</div>
						<div class="form-group">
							<label class="col-lg-3 control-label">�̸���</label>
							<div class="col-lg-6">
								<input name="email" type="email" class="form-control" placeholder="E-mail">
							</div>
						</div>
						<div class="form-group">
							<label class="col-lg-3 control-label">����ó</label>
							<div class="col-lg-4">
								<input name="phone" type="text" class="form-control" placeholder="Phone">
							</div>
						</div>
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-default" data-dismiss="modal">���</button>
						<button type="button" class="btn btn-primary" data-toggle="modal" href="#join_sc_modal" data-dismiss="modal">ȸ������</button>
					</div>
				</div>
			</div>
		</form>
	</div> 
	-->

	<!--
 	ȸ������ �Ϸ� ��� : ����
	<div class="modal fade" id="join_sc_modal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
		<form class="form-horizontal" role="form">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal" aria-hidden="true">��</button>
						<h4 class="modal-title">
							<span class="glyphicon glyphicon-plus"></span>&nbsp;Join In
						</h4>
					</div>
					<div class="modal-body">
						<div class="form-group">
							<h2 style="text-align: center;">������ ���ϵ帳�ϴ�</h2>
						</div>
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-default" data-dismiss="modal">�ݱ�</button>
						<button type="button" class="btn btn-primary" data-toggle="modal" href="#loginModal" data-dismiss="modal">�α����ϱ�</button>
					</div>
				</div>
			</div>
		</form>
	</div>
	-->

	<!-- ������ ��� : ���� -->
	<div class="bs-header" id="content">
		<div class="marketing-section marketing-section-signup">
			<div class="container">
				<h1 class="heading">Welcome to Title</h1>
				<p>ȯ���մϴ�</p>
			</div>
		</div>
	</div>
	<!-- ������ ��� : �� -->

	<!-- ������ �ٵ� : ���� -->
	<div class="container bs-docs-container">
		<div>
			<div>
				<h5 class="page-header">
					<img class="new" src="./images/new.png"><b>�ֱٱ�</b>
				</h5>
			</div>
			<div class="text-right">
				<p>
					<a href="./board.jsp">more</a>&nbsp;&nbsp;
				</p>
			</div>
		</div>
		<div class="table-responsive">
			<table class="table table-condensed table-hover">
				<colgroup>
					<col width="70">
					<col width="*">
					<col width="122">
					<col width="100">
					<col width="70">
				</colgroup>
				<thead>
					<tr class="text-center"
						style="font-weight: bolder; background-image: url('./images/table_mid.gif');">
						<td>��ȣ</td>
						<td>����</td>
						<td>�ۼ���</td>
						<td>�ۼ���</td>
						<td>��ȸ��</td>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td align="center">1</td>
						<td align="left"><a href="#">����1</a></td>
						<td align="left"><a href="#">�ۼ���1</a></td>
						<td align="center">2014-08-15</td>
						<td align="center">30</td>
					</tr>
					<tr>
						<td align="center">2</td>
						<td align="left"><a href="#">����2</a></td>
						<td align="left"><a href="#">�ۼ���2</a></td>
						<td align="center">2014-08-16</td>
						<td align="center">21</td>
					</tr>
					<tr>
						<td align="center">3</td>
						<td align="left"><a href="#">����3</a></td>
						<td align="left"><a href="#">�ۼ���3</a></td>
						<td align="center">2014-08-17</td>
						<td align="center">25</td>
					</tr>
				</tbody>
			</table>
		</div>
	</div>
	<!-- ������ �ٵ� : �� -->

	<hr>
	<!-- ������ : ���� -->
	<div class="container">
		<footer>
		<div class="row">
			<div class="col-lg-12">
				<p>Copyright &copy; Your Website 2014</p>
			</div>
		</div>
	</div>
	<!-- ������ : �� -->
</body>
</html>