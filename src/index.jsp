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

<!-- 모바일화면 출력용 -->
<!-- 
<script type="text/javascript">
	var mobileKeyWords = new Array('iPhone', 'iPod', 'BlackBerry', 'Android',
			'Windows CE', 'LG', 'MOT', 'SAMSUNG', 'SonyEricsson');
	for ( var word in mobileKeyWords) {
		if (navigator.userAgent.match(mobileKeyWords[word]) != null) {
			location.href = "접근경로지정";
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
		//로그인 체크
		String userid = "";
		userid = (String) session.getAttribute("userid");
	%>

	<!-- 네비게이션바 : 시작 -->
	<nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
	<div class="container">
		<div class="navbar-header">
			<!-- 모바일 크기일 때 네비게이션바를 한버튼으로 몰아 넣는 기능(타겟의 id값에 해당되는 목록을 출력해준다) -->
			<button type="button" class="navbar-toggle" data-toggle="collapse"
				data-target="#bs-example-navbar-collapse-1">
				<span class="sr-only">Toggle navigation</span> <span
					class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="./index.jsp">HOME</a>
		</div>

		<!-- id를 주어 자바스크립트로 모바일 화면에서 네비바버튼이 동작되게 한다 -->
		<div class="collapse navbar-collapse"
			id="bs-example-navbar-collapse-1">
			<ul class="nav navbar-nav">
				<li><a href="./board.jsp">board</a></li>
				<li><a href="#">menu2</a></li>
				<li><a href="#">menu3</a></li>
			</ul>
			<ul class="nav navbar-nav navbar-right">
				<!-- 자바스크립트로 if문을 사용하여 로그인되었는지 안되었는지를 구분 -->
				<%
					//로그인이 되어있으면
					if (userid != null && !userid.equals("")) {
				%>
				<li><a href="#"><span class="glyphicon glyphicon-user"></span>&nbsp;<%=userid%>&nbsp;님</a></li>
				<li><a href="./logout_proc.jsp"><span
						class="glyphicon glyphicon-log-out"></span>&nbsp;로그아웃</a></li>
				<%
					//로그인이 되어있지 않다면
					} else {
				%>
				<li><a data-toggle="modal" href="#loginModal"> <span
						class="glyphicon glyphicon-log-in"></span>&nbsp;로그인
				</a></li>
				<li><a data-toggle="modal" href="./join.jsp"> <span
						class="glyphicon glyphicon-plus"></span>&nbsp;회원가입
				</a></li>
				<%
					}
				%>
			</ul>
		</div>
	</div>
	</nav>
	<!-- 네비게이션바 : 끝 -->

	<!-- 로그인모달 : 시작 -->
	<div class="modal fade" id="loginModal" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel" aria-hidden="true">
		<form name="login_form" method="post" class="form-horizontal"
			role="form">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal"
							aria-hidden="true">×</button>
						<h4 class="modal-title">
							<span class="glyphicon glyphicon-log-in"></span>&nbsp;LOGIN
						</h4>
					</div>
					<div class="modal-body">
						<div class="form-group">
							<label for="inputId" class="col-lg-3 control-label">회원 ID</label>
							<div class="col-lg-6">
								<input name="userid" type="text" class="form-control"
									placeholder="User ID" tabindex="1">
							</div>
							<div class="col-lg-3">
								<a href="#" tabindex="4"><h6>아이디 찾기</h6></a>
							</div>
						</div>
						<div class="form-group">
							<label for="inputPassword1" class="col-lg-3 control-label">비밀번호</label>
							<div class="col-lg-6">
								<input name="password" type="password" class="form-control"
									placeholder="Password" tabindex="2">
							</div>
							<div class="col-lg-3">
								<a href="#" tabindex="5"><h6>비밀번호 찾기</h6></a>
							</div>
						</div>
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-default" data-dismiss="modal"
							tabindex="6">취소</button>
						<button type="button" class="btn btn-primary"
							onclick="login_check()" tabindex="3">로그인</button>
					</div>
				</div>
			</div>
		</form>
	</div>
	<!-- 로그인모달 : 끝 -->

	<!-- 페이지 헤더 : 시작 -->
	<div class="bs-header" id="content">
		<div class="marketing-section marketing-section-signup">
			<div class="container">
				<h1 class="heading">Welcome to Title</h1>
				<p>환영합니다</p>
			</div>
		</div>
	</div>
	<!-- 페이지 헤더 : 끝 -->

	<!-- 페이지 바디 : 시작 -->
	<div class="container bs-docs-container">
		<div>
			<div>
				<h5 class="page-header">
					<img class="new" src="./images/new.png"><b>최근글</b>
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
						<td>번호</td>
						<td>제목</td>
						<td>작성자</td>
						<td>작성일</td>
						<td>조회수</td>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td align="center">1</td>
						<td align="left"><a href="#">제목1</a></td>
						<td align="left"><a href="#">작성자1</a></td>
						<td align="center">2014-08-15</td>
						<td align="center">30</td>
					</tr>
					<tr>
						<td align="center">2</td>
						<td align="left"><a href="#">제목2</a></td>
						<td align="left"><a href="#">작성자2</a></td>
						<td align="center">2014-08-16</td>
						<td align="center">21</td>
					</tr>
					<tr>
						<td align="center">3</td>
						<td align="left"><a href="#">제목3</a></td>
						<td align="left"><a href="#">작성자3</a></td>
						<td align="center">2014-08-17</td>
						<td align="center">25</td>
					</tr>
				</tbody>
			</table>
		</div>
	</div>
	<!-- 페이지 바디 : 끝 -->

	<hr>
	<!-- 꼬릿말 : 시작 -->
	<div class="container">
		<footer>
		<div class="row">
			<div class="col-lg-12">
				<p>Copyright &copy; Your Website 2014</p>
			</div>
		</div>
	</div>
	<!-- 꼬릿말 : 끝 -->
</body>
</html>