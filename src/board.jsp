<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ include file="./include/header.jsp"%>
<%@ page import="com.myhome.univ.*"%>
<%@page import="java.util.ArrayList"%>
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

<!-- Bootstrap Core CSS -->
<link href="./css/bootstrap.min.css" rel="stylesheet">
<link href="./css/style-kustom.css" rel="stylesheet">
<link href="./assets/css/docs.css" rel="stylesheet">

<!-- jQuery Version 1.11.0 -->
<script src="./js/jquery-1.11.0.js"></script>
<!-- Bootstrap Core JavaScript -->
<script src="./js/bootstrap.min.js"></script>

<!-- script -->
<script type="text/javascript" src="./js/member.js"></script>
<script type="text/javascript" src="./js/board.js"></script>

</head>

<body>
	<%
		String opt = request.getParameter("options");
		String univOpt = request.getParameter("univOpt");
		String boardOpt = request.getParameter("boardOpt");

		System.out.println(opt);
		System.out.println(univOpt);
		System.out.println(boardOpt);
	%>
	<form name="form" method="get">
		<!-- ������ �ٵ� : ���� -->
		<div class="container bs-docs-container">
			<!-- �Խ��� ����Ʈ ��� : ���� -->
			<div class="row">
				<div class="row page-header">
					<div class="col-md-1"></div>
					<div class="btn-group btn-group-sm col-md-2" data-toggle="buttons">
						<label class="btn btn-warning"> <input type="radio"
							name="options" value="1">�˴ϴ�
						</label> <label class="btn btn-warning"> <input type="radio"
							name="options" value="2">��ϴ�
						</label>

					</div>
					<div class="col-md-2">
						<select name="univOpt" class="form-control">
							<option>----- ���м��� -----</option>
							<%
								univDao dao = new univDao();
								ArrayList<univDto> list = new ArrayList<univDto>();
							%>
							<optgroup label="<��>"></optgroup>
							<%
								list = (ArrayList) dao.getList("��", "��");
								for (int i = 0; i < list.size(); i++) {
									univDto dto = list.get(i);
							%>
							<option value="<%=dto.getUnivname()%>"><%=dto.getUnivname()%></option>
							<%
								}
							%>
							<optgroup label=""></optgroup>
							<optgroup label="<��>"></optgroup>
							<%
								list = (ArrayList) dao.getList("��", "��");
								for (int i = 0; i < list.size(); i++) {
									univDto dto = list.get(i);
							%>
							<option value="<%=dto.getUnivname()%>"><%=dto.getUnivname()%></option>
							<%
								}
							%>
							<optgroup label=""></optgroup>
							<optgroup label="<��>"></optgroup>
							<%
								list = (ArrayList) dao.getList("��", "��");
								for (int i = 0; i < list.size(); i++) {
									univDto dto = list.get(i);
							%>
							<option value="<%=dto.getUnivname()%>"><%=dto.getUnivname()%></option>
							<%
								}
							%>
							<optgroup label=""></optgroup>
							<optgroup label="<��>"></optgroup>
							<%
								list = (ArrayList) dao.getList("��", "��");
								for (int i = 0; i < list.size(); i++) {
									univDto dto = list.get(i);
							%>
							<option value="<%=dto.getUnivname()%>"><%=dto.getUnivname()%></option>
							<%
								}
							%>
							<optgroup label=""></optgroup>
							<optgroup label="<��>"></optgroup>
							<%
								list = (ArrayList) dao.getList("��", "��");
								for (int i = 0; i < list.size(); i++) {
									univDto dto = list.get(i);
							%>
							<option value="<%=dto.getUnivname()%>"><%=dto.getUnivname()%></option>
							<%
								}
							%>
							<optgroup label=""></optgroup>
							<optgroup label="<��>"></optgroup>
							<%
								list = (ArrayList) dao.getList("��", "��");
								for (int i = 0; i < list.size(); i++) {
									univDto dto = list.get(i);
							%>
							<option value="<%=dto.getUnivname()%>"><%=dto.getUnivname()%></option>
							<%
								}
							%><optgroup label=""></optgroup>
							<optgroup label="<��>"></optgroup>
							<%
								list = (ArrayList) dao.getList("��", "��");
								for (int i = 0; i < list.size(); i++) {
									univDto dto = list.get(i);
							%>
							<option value="<%=dto.getUnivname()%>"><%=dto.getUnivname()%></option>
							<%
								}
							%><optgroup label=""></optgroup>
							<optgroup label="<��>"></optgroup>
							<%
								list = (ArrayList) dao.getList("��", "��");
								for (int i = 0; i < list.size(); i++) {
									univDto dto = list.get(i);
							%>
							<option value="<%=dto.getUnivname()%>"><%=dto.getUnivname()%></option>
							<%
								}
							%><optgroup label=""></optgroup>
							<optgroup label="<��>"></optgroup>
							<%
								list = (ArrayList) dao.getList("��", "��");
								for (int i = 0; i < list.size(); i++) {
									univDto dto = list.get(i);
							%>
							<option value="<%=dto.getUnivname()%>"><%=dto.getUnivname()%></option>
							<%
								}
							%><optgroup label=""></optgroup>
							<optgroup label="<��>"></optgroup>
							<%
								list = (ArrayList) dao.getList("��", "ī");
								for (int i = 0; i < list.size(); i++) {
									univDto dto = list.get(i);
							%>
							<option value="<%=dto.getUnivname()%>"><%=dto.getUnivname()%></option>
							<%
								}
							%><optgroup label=""></optgroup>
							<optgroup label="<��>"></optgroup>
							<%
								list = (ArrayList) dao.getList("ī", "Ÿ");
								for (int i = 0; i < list.size(); i++) {
									univDto dto = list.get(i);
							%>
							<option value="<%=dto.getUnivname()%>"><%=dto.getUnivname()%></option>
							<%
								}
							%><optgroup label=""></optgroup>
							<optgroup label="<��>"></optgroup>
							<%
								list = (ArrayList) dao.getList("��", "��");
								for (int i = 0; i < list.size(); i++) {
									univDto dto = list.get(i);
							%>
							<option value="<%=dto.getUnivname()%>"><%=dto.getUnivname()%></option>
							<%
								}
							%><optgroup label=""></optgroup>
							<optgroup label="<��>"></optgroup>
							<%
								list = (ArrayList) dao.getList("��", "��");
								for (int i = 0; i < list.size(); i++) {
									univDto dto = list.get(i);
							%>
							<option value="<%=dto.getUnivname()%>"><%=dto.getUnivname()%></option>
							<%
								}
							%>
						</select>
					</div>
					<div class="col-md-2">
						<select name="boardOpt" class="form-control">
							<option>---- �Խ��Ǽ��� ----</option>
							<option value="���ŷ�">���ŷ�</option>
							<option value="�����ŷ�">�����ŷ�</option>
						</select>
					</div>
					<div class="col-md-2">
						<input type="text" class="form-control">
					</div>
					<div class="col-md-1">
						<input type="button" class="btn btn-success" value="�˻�"
							onclick="boardCheck()">
					</div>
					<div class="col-md-1"></div>
					<div class="col-md-2"></div>


					<!-- �Խ��Ǹ���Ʈ ��� �ɼǹ�ư
				<div class="navbar-right radio">
					<label> <input type="radio" name="optionsRadios"
						value="op_album"> <small><span
							class="glyphicon glyphicon-th-large"></span>&nbsp;�ٹ���</small></label> &nbsp; <label>
						<input type="radio" name="optionsRadios" value="op_board"
						checked="checked"> <small><span
							class="glyphicon glyphicon-align-justify"> </span>&nbsp;�Խñ���</small>
					</label>
				</div> -->
				</div>
			</div>
			<!-- �Խ��� ����Ʈ ��� : �� -->

			<!-- �Խ��� ����Ʈ �ٵ� : ���� -->
			<div class="container bs-docs-container">
				<div class="table-responsive">
					<table class="table table-condensed table-hover">
						<colgroup>
							<col width="70">
							<col width="*">
							<col width="170">
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
						</tbody>
					</table>
				</div>
			</div>
			<!-- �Խ��� ����Ʈ �ٵ� : �� -->

			<!-- �Խ��� ����Ʈ �Ʒ� �۾���, �˻�, ����¡ : ���� -->
			<div class="row text-center">
				<div class="col-lg-12">
					<input class="btn btn-primary navbar-right" type="button"
						value="�۾���" data-toggle="modal" data-target="#writeModal">
				</div>
				<div class="col-lg-12">
					<ul class="pagination">
						<li><a href="#">&laquo;</a></li>
						<li class="active"><a href="#">1</a></li>
						<li><a href="#">2</a></li>
						<li><a href="#">3</a></li>
						<li><a href="#">4</a></li>
						<li><a href="#">5</a></li>
						<li><a href="#">&raquo;</a></li>
					</ul>
				</div>
				<hr>
				<div class="col-lg-12">
					<input type="text">&nbsp;<input
						class="btn btn-primary btn-sm" type="button" value="�˻�">
				</div>

			</div>
			<!-- �Խ��� ����Ʈ �Ʒ� �۾���, �˻�, ����¡ : �� -->
		</div>
		<!-- ������ �ٵ� : �� -->
	</form>

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

	<%@include file="./include/writeModal.jsp"%>

</body>
</html>