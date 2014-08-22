<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ include file="./include/header.jsp" %>
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
	<!-- ������ ��� : ���� -->
	<div class="bs-header" id="content">
		<div class="marketing-section marketing-section-signup">
			<div class="container">
				<h1 class="heading">Welcome</h1>
				<p><h3>ȣ�� ������� & �������� Ŀ�´����̼�</h3></p>
			</div>
		</div>
	</div>
	<!-- ������ ��� : �� -->

	<!-- ������ �ٵ� : ���� -->
	<div class="container bs-docs-container">
		<div>
			<div>
				<h5 class="page-header">
					<img class="new" src="./images/new.png"><b>ȣ���� �ֽ� ��������</b>
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