<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>

<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">

<%
	request.setCharacterEncoding("EUC-KR");

	//�α��� üũ
	String userid = (String) session.getAttribute("userid");
	String username = (String) session.getAttribute("username");

	//���� �������� ���ϸ� üũ

	String cururl = request.getRequestURI().toString();
	String pageName = cururl.substring(cururl.lastIndexOf("/") + 1,
			cururl.length());
	session.setAttribute("pageName", pageName);

	System.out.println(pageName);

	if ((!pageName.equals("index.jsp")) && !pageName.equals("")) {
		if (userid == null) {
%>
<script>
	alert("�α����� �ʿ��� �����Դϴ�");
	location.href = "./index.jsp";
</script>
<%
	}
	}
%>

<!-- ������ ��� : ���� -->
<div class="bs-header" id="content">
	<div class="marketing-section marketing-section-signup">
		<div class="container">
			<div class="col-lg-12">
				<h1 class="heading" style="font-family: 'Nanum Pen Script', serif;">���л�����
					���� �߰����</h1>
			</div>
		</div>
	</div>
</div>
<!-- ������ ��� : �� -->

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
				<li><a href="#"><small>�����߰����</small></a></li>
				<li><a href="./board.jsp"><small>�����߰����</small></a></li>
				<li><a href="#"><small>���ᳪ��</small></a></li>
				<li><a href="#"><small>�˹ٸ���</small></a></li>
				<li><a href="#"><small>���뱤��</small></a></li>
				<li><a href="#"><small>������</small></a></li>
			</ul>
			<ul class="nav navbar-nav navbar-right">
				<!-- �ڹٽ�ũ��Ʈ�� if���� ����Ͽ� �α��εǾ����� �ȵǾ������� ���� -->
				<%
					//�α����� �Ǿ�������
					if (userid != null && !userid.equals("")) {
				%>
				<li><a href="#"> <span class="glyphicon glyphicon-user"></span>&nbsp;<small><%=username%>&nbsp;��</small>
				</a></li>
				<li><a href="#"> <span class="glyphicon glyphicon-send"></span>&nbsp;<small>&nbsp;����</small>
				</a></li>
				<li><a href="./logout_proc.jsp"> <span
						class="glyphicon glyphicon-log-out"></span>&nbsp;<small>�α׾ƿ�</small>
				</a></li>
				<%
					//�α����� �Ǿ����� �ʴٸ�
					} else {
				%>
				<li><a data-toggle="modal" href="#loginModal"> <span
						class="glyphicon glyphicon-log-in"></span>&nbsp;<small>�α���</small>
				</a></li>
				<li><a data-toggle="modal" href="#joinModal"> <span
						class="glyphicon glyphicon-plus"></span>&nbsp;<small>ȸ������</small>
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
		<input type="hidden" name="pageName" value=<%=pageName%>>
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

