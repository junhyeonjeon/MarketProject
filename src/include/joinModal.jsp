<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>

<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">


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