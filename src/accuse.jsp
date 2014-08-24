<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ include file="./include/header.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<!-- <meta http-equiv="X-UA-Compatible" content="IE=edge"> -->
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1.0, user-scalable=no">
<!-- <meta name="description" content="">
<!-- <meta name="author" content=""> -->

<title>Insert title here</title>

<!-- CSS -->
<link href="./css/bootstrap.min.css" rel="stylesheet">
<link href="./css/style-kustom.css" rel="stylesheet">
<link href="./assets/css/docs.css" rel="stylesheet">

<style type="text/css">
a:link {
	color: black;
	text-decoration: none;
}

a:visited {
	color: black;
	text-decoration: none;
}

a:hover {
	color: black;
	text-decoration: none;
}
</style>

<!-- script -->
<script type="text/javascript" src="./js/member.js"></script>
<script src="./assets/js/holder.js"></script>
<script src="./assets/js/application.js"></script>
<!-- jQuery Version 1.11.0 -->
<script src="js/jquery-1.11.0.js"></script>
<!-- Bootstrap Core JavaScript -->
<script src="js/bootstrap.min.js"></script>

<!-- �����ȭ�� ��¿� -->
<!-- 
<script type="text/javascript">
	var mobileKeyWords = new Array('iPhone', 'iPod', 'BlackBerry', 'Android', 'Windows CE', 'LG', 'MOT', 'SAMSUNG', 'SonyEricsson');
	for ( var word in mobileKeyWords) {
		if (navigator.userAgent.match(mobileKeyWords[word]) != null) {
			location.href = "���ٰ������";
			break;
		}
	}
</script> 
-->



</head>

<body>
	<!-- ������ �ٵ� : ���� -->
	<div class="container bs-docs-container">
		<div class="row">
			<div class="col-md-2">
				<div class="bs-sidebar hidden-print" role="complementary">
					<ul class="nav bs-sidenav">
						<li><a href="./index.jsp">��������</a></li>
						<li><a href="./event.jsp">�̺�Ʈ</a></li>
						<li class="active"><a href="./accuse.jsp">�ҷ�/���Ű�</a></li>
					</ul>
				</div>
			</div>

			<div class="col-md-8">
				<div>
					<h5 class="page-header form-control" style="height: 55">
						<img class="new" src="./images/new.png"><b>�ҷ�/���Ű�</b><br>
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<small>�ŷ� �� ��� ��
							���/���, ��� �ǽ� �Խñ��̳� ȸ���� �Ű����ּ���</small>
					</h5>
				</div>
				<div class="table-responsive">
					<table class="table table-condensed table-hover">
						<colgroup>
							<col width="60">
							<col width="*">
							<col width="130">
							<col width="100">
							<col width="70">
						</colgroup>
						<thead>
							<tr class="text-center"
								style="font-weight: bolder; background-image: url('./images/table_mid.gif');">
								<td><small></small></td>
								<td><small>����</small></td>
								<td><small>�ۼ���</small></td>
								<td><small>�ۼ���</small></td>
								<td><small>��ȸ</small></td>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td align="center"><small>1</small></td>
								<td align="left"><a href="#"><small>����1</small></a></td>
								<td align="center"><a href="#"><small>USER1</small></a></td>
								<td align="center"><small>2014-08-16</small></td>
								<td align="center"><small>30</small></td>
							</tr>
							<tr>
								<td align="center"><small>2</small></td>
								<td align="left"><a href="#"><small>����2</small></a></td>
								<td align="center"><a href="#"><small>USER2</small></a></td>
								<td align="center"><small>2014-08-15</small></td>
								<td align="center"><small>30</small></td>
							</tr>
							<tr>
								<td align="center"><small>3</small></td>
								<td align="left"><a href="#"><small>����3</small></a></td>
								<td align="center"><a href="#"><small>USER3</small></a></td>
								<td align="center"><small>2014-08-14</small></td>
								<td align="center"><small>30</small></td>
							</tr>
							<tr>
								<td align="center"><small>4</small></td>
								<td align="left"><a href="#"><small>����4</small></a></td>
								<td align="center"><a href="#"><small>USER4</small></a></td>
								<td align="center"><small>2014-08-13</small></td>
								<td align="center"><small>30</small></td>
							</tr>
							<tr>
								<td align="center"><small>5</small></td>
								<td align="left"><a href="#"><small>����5</small></a></td>
								<td align="center"><a href="#"><small>USER5</small></a></td>
								<td align="center"><small>2014-08-12</small></td>
								<td align="center"><small>30</small></td>
							</tr>
							<tr>
								<td align="center"><small>6</small></td>
								<td align="left"><a href="#"><small>����6</small></a></td>
								<td align="center"><a href="#"><small>USER6</small></a></td>
								<td align="center"><small>2014-08-11</small></td>
								<td align="center"><small>30</small></td>
							</tr>
							<tr>
								<td align="center"><small>7</small></td>
								<td align="left"><a href="#"><small>����7</small></a></td>
								<td align="center"><a href="#"><small>USER7</small></a></td>
								<td align="center"><small>2014-08-10</small></td>
								<td align="center"><small>30</small></td>
							</tr>

						</tbody>
					</table>
					<%if(session.getAttribute("userid")!=null){ %>
					<div class="navbar-right">
						<input class="btn btn-danger" type="button" value="�۾���"
							data-toggle="modal" data-target="#writeModal">
					</div>
					<%} %>
				</div>

				<div>
					<a href="#"><img alt="banner_bottom"
						src="./images/joonggonara_cleancall_banner.jpg"
						style="width: 100%;"></a>
				</div>
			</div>
			<div class="col-md-2">
				<div style="margin-top: 20%">
					<a href="#"><img alt="banner_right"
						src="./images/banner_right.jpg" style="width: 100%"></a>
				</div>
			</div>
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