<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<!-- �۾����� : ���� -->
	<div class="modal fade" id="writeModal" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel" aria-hidden="true">
		<form name="write_form" method="post" class="form-horizontal"
			role="form">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal"
							aria-hidden="true">��</button>
						<h4 class="modal-title">
							<span class="glyphicon glyphicon-pencil"></span>&nbsp;WRITE
						</h4>
					</div>
					<div class="modal-body">
						<div class="form-group">
							<div class="col-lg-2">
								<label class="control-label">ī�װ�</label>
							</div>
							<div class="col-lg-4">
								<select class="form-control">
									<option value="">����</option>
									<option value="sell">�˴ϴ�</option>
									<option value="buy">��ϴ�</option>
								</select>
							</div>
							<div class="col-lg-4">
								<select class="form-control">
									<option value="">�б�����</option>
									<option value="board_sell">�������(�˴ϴ�)</option>
									<option value="board_buy">�������(��ϴ�)</option>
									<option value="room_board">��������</option>
								</select>
							</div>
						</div>
						<div class="form-group">
							<div class="col-lg-2">
								<label class="control-label">����</label>
							</div>
							<div class="col-lg-10">
								<input type="text" class="form-control" placeholder="������ �Է��ϼ���">
							</div>
						</div>
						<div class="form-group">
							<div class="col-lg-2">
								<label class="control-label">����</label>
							</div>
							<div class="col-lg-10">
								<textarea class="form-control" style="height: 180px"></textarea>
							</div>
						</div>
						<div class="form-group">
							<div class="col-lg-2">
								<label class="control-label">÷������</label>
							</div>
							<div class="col-lg-10">
								<input type="file" class="control-label">
							</div>
						</div>
					</div>

					<div class="modal-footer">
						<button type="button" class="btn btn-default" data-dismiss="modal">���</button>
						<button type="button" class="btn btn-primary">�ۼ��Ϸ�</button>
					</div>
				</div>
			</div>
		</form>
	</div>
	<!-- �۾����� : �� -->
</body>
</html>