<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>

<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">

<%
	request.setCharacterEncoding("EUC-KR");

	//�α��� üũ
	String userid = "";
	String username = "";
	userid = (String) session.getAttribute("userid");
	username = (String) session.getAttribute("username");

	//���� �������� ���ϸ� üũ

	String cururl = request.getRequestURI().toString();
	String pageName = cururl.substring(cururl.lastIndexOf("/") + 1,
			cururl.length());
	session.setAttribute("pageName", pageName);

	if ((!pageName.equals("index.jsp"))&& userid==null) {
%>
		<script>
			alert("�α����� �ʿ��� �����Դϴ�");
			location.href="./index.jsp";
		</script>
<%
	}
%>
<a class="sr-only" href="#content">�׺���̼� �ǳʶٱ�</a>
<!-- �׺���̼ǹ� : ���� -->
<header class="navbar navbar-inverse navbar-fixed-top" role="navigation">
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
				<li <%if (pageName.equals("junggo.jsp")) {%> class="active" <%}%>><a
					href="#"><small>�����߰����</small></a></li>
				<li <%if (pageName.equals("board.jsp")) {%> class="active" <%}%>><a
					href="./board.jsp"><small>�����߰����</small></a></li>
				<li <%if (pageName.equals("divide.jsp")) {%> class="active" <%}%>><a
					href="#"><small>���ᳪ��</small></a></li>
				<li <%if (pageName.equals("job.jsp")) {%> class="active" <%}%>><a
					href="#"><small>�˹ٸ���</small></a></li>
				<li <%if (pageName.equals("room.jsp")) {%> class="active" <%}%>><a
					href="#"><small>���뱤��</small></a></li>
				<li <%if (pageName.equals("helpcenter.jsp")) {%> class="active"
					<%}%>><a href="#"><small>������</small></a></li>
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
				<form class="navbar-form navbar-right" role="search">
					<div class="form-group input-group">
						<input type="text" class="form-control" placeholder="Search">
						<span class="input-group-btn">
							<button class="btn btn-default">�˻�</button>
						</span>
					</div>
				</form>
			</ul>
		</div>
	</div>
</header>
<!-- �׺���̼ǹ� : �� -->

<!-- ������ ��� : ���� -->
<div class="bs-header" id="content">
	<div class="marketing-section marketing-section-signup">
		<div class="container">
			<div class="col-lg-12">
				<h1 class="heading" style="font-family: 'Nanum Pen Script', serif;">���л���
					���� �߰����</h1>
			</div>
		</div>
	</div>
</div>
<!-- ������ ��� : �� -->

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

<div class="modal fade" id="joinModal" tabindex="-1" role="dialog"
	aria-labelledby="myModalLabel" aria-hidden="true">
	<form name="join" method="post" class="form-horizontal" role="form"
		autocomplete="off">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-hidden="true">��</button>
					<h4 class="modal-title">
						<span class="glyphicon glyphicon-plus"></span>&nbsp;Join In
					</h4>
				</div>
				<div class="modal-body">

					<!-- ȸ�� ���̵� : ���� -->
					<div class="form-group">
						<label class="col-lg-3 control-label">ȸ�� ID</label>

						<div class="col-lg-4">
							<input name="userid" id="userid" type="text" class="form-control"
								style="ime-mode: inactive" onkeyup="ajaxSend('id',this)">

							<h6>
								<span name="id_result" id="id_result" style="color: red"></span>
							</h6>

							<span name="idTxt" id="idTxt" style="display: none;"></span>
							<!-- <input class="btn btn-default btn-xs" type="button" value="ID �ߺ�üũ" style="margin-top: 5px" onclick="openIDCheck()"> -->
						</div>
					</div>
					<!-- ȸ�� ���̵� : �� -->

					<!-- ��й�ȣ : ���� -->
					<div class="form-group">
						<label class="col-lg-3 control-label">��й�ȣ</label>

						<div class="col-lg-4">
							<input name="password1" id="password1" type="password"
								class="form-control" style="ime-mode: inactive"
								onkeyup="checkpwd()" placeholder="Password">
						</div>
					</div>

					<div class="form-group">
						<label class="col-lg-3 control-label">��й�ȣ Ȯ��</label>

						<div class="col-lg-4">
							<input name="password2" id="password2" type="password"
								class="form-control" style="ime-mode: inactive"
								onkeyup="checkpwd()" placeholder="Check Password">
							<h6>
								<span name="pw_result" id="pw_result" style="color: red;"></span>
							</h6>

							<span name="pwTxt" id="pwTxt" style="display: none;"></span>
						</div>
					</div>
					<!-- ��й�ȣ : �� -->

					<hr>

					<!-- �г��� : ���� -->
					<div class="form-group">
						<label class="col-lg-3 control-label">�г���</label>

						<div class="col-lg-4">
							<input name="username" id="username" type="text"
								class="form-control" onkeyup="ajaxSend('name')">
							<h6>
								<span name="name_result" id="name_result" style="color: red;"></span>
							</h6>

							<span name="nameTxt" id="nameTxt" style="display: none;"></span>
						</div>
					</div>
					<!-- �г��� : �� -->

					<!-- �ּ� : ���� -->
					<div class="form-group">
						<label class="col-lg-3 control-label">�����ȣ</label>

						<div class="col-lg-4">
							<input name="zipcode" id="zipcode" type="text"
								class="form-control" placeholder="��ư�� �����ּ���" readonly>
						</div>

						<input type="button" class="btn btn-default btn-default"
							value="�ּ� ã��" onclick="goFindZipcode()"> <input
							type="hidden" name="addTxt" id="addTxt" value="N">
					</div>

					<div class="form-group">
						<label class="col-lg-3 control-label">�ּ�</label>
						<div class="col-lg-9">
							<input name="address1" id="address1" type="text"
								class="form-control" placeholder="�ʼ� �����Դϴ�" readonly>
						</div>
					</div>

					<div class="form-group">
						<label class="col-lg-3 control-label">���ּ�</label>
						<div class="col-lg-7">
							<input name="address2" type="text" class="form-control"
								style="ime-mode: active">
						</div>
					</div>
					<!-- �ּ� : �� -->

					<!-- �̸��� : ���� -->
					<div class="form-group">
						<label class="col-lg-3 control-label">�̸���</label>
						<div class="col-lg-6">
							<input name="email" id="email" type="email" class="form-control"
								onkeyup="ajaxSend('email')" placeholder="��й�ȣ ã�⿡ ���">
							<h6>
								<span name="email_result" id="email_result" style="color: red;"></span>
							</h6>

							<span name="emailTxt" id="emailTxt" style="display: none;"></span>
						</div>
					</div>
					<!-- �̸��� : �� -->

					<!-- ����ó : ���� -->
					<div class="form-group">
						<label class="col-lg-3 control-label">����ó</label>
						<div class="col-lg-4">
							<!-- OnKeypress="onlyNumber()" style="ime-mode:disabled" onKeyup="eng(this)" -->
							<input name="phone" id="phone" type="text" class="form-control"
								placeholder="�ʼ� �����Դϴ�" readonly>
						</div>
						<input class="btn btn-default btn-default" type="button"
							value="�޴��� ����" onclick="goChkPhone()">
					</div>
					<!-- ����ó : �� -->
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">���</button>
					<button type="button" class="btn btn-primary" onclick="goJoin()">ȸ������</button>
				</div>
			</div>
		</div>
	</form>
</div>

<!-- script -->
<script type="text/javascript" src="./js/member.js"></script>
<script type="text/javascript" src="./js/ajax.js"></script>