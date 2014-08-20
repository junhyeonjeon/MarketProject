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

<!-- Bootstrap Core CSS -->
<link href="css/bootstrap.min.css" rel="stylesheet">

<!-- Custom CSS -->
<link href="./css/style-kustom.css" rel="stylesheet">

<!-- jQuery Version 1.11.0 -->
<script src="./js/jquery-1.11.0.js"></script>
<!-- Bootstrap Core JavaScript -->
<script src="./js/bootstrap.min.js"></script>

</head>
<body>
	<%
		//로그인 체크
		String userid = "";
		userid = (String)session.getAttribute("userid");
	%>

	<!-- 네비게이션바 : 시작 -->
	<nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
	<div class="container">
		<div class="navbar-header">
			<!-- 모바일 크기일 때 네비게이션바를 한버튼으로 몰아 넣는 기능(타겟의 id값에 해당되는 목록을 출력해준다) -->
			<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
				<span class="sr-only">Toggle navigation</span> 
				<span class="icon-bar"></span> 
				<span class="icon-bar"></span> 
				<span class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="./index.jsp">HOME</a>
		</div>
		
		<!-- id를 주어 자바스크립트로 모바일 화면에서 네비바버튼이 동작되게 한다 -->
		<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
			<ul class="nav navbar-nav">
				<li class="active"><a href="./board.jsp">board</a></li>
				<li><a href="#">menu2</a></li>
				<li><a href="#">menu3</a></li>
			</ul>
			<ul class="nav navbar-nav navbar-right">
				<!-- 자바스크립트로 if문을 사용하여 로그인되었는지 안되었는지를 구분 -->
				<% 
					//로그인이 되어있으면
					if(userid!=null && !userid.equals("")){
				%>
					<li><a href="#"><span class="glyphicon glyphicon-user"></span>&nbsp;<%=userid%>&nbsp;님</a></li>
					<li><a href="./logout_proc.jsp"><span class="glyphicon glyphicon-log-out"></span>&nbsp;로그아웃</a></li>
				<%
					//로그인이 되어있지 않다면
					} else {
				%>
					<li><a data-toggle="modal" href="#loginModal">
						<span class="glyphicon glyphicon-log-in"></span>&nbsp;로그인</a></li>
					<li><a data-toggle="modal" href="#joinModal">
						<span class="glyphicon glyphicon-plus"></span>&nbsp;회원가입</a></li>
				<%
					}
				%>
			</ul>
		</div>
	</div>
	</nav>
	<!-- 네비게이션바 : 끝 -->

	<!-- Page Content -->
	<div class="container">

		<!-- Page Heading -->
		<div class="row">
			<div class="col-lg-12">
				<h1 class="page-header">
					Page Heading <small>Secondary Text</small>
				</h1>
				<div class="navbar-right radio">
					<label> <input type="radio" name="optionsRadios"
						value="op_album" checked="checked"> <small><span
							class="glyphicon glyphicon-th-large"></span>&nbsp;앨범형</small>
					</label> &nbsp; <label> <input type="radio" name="optionsRadios"
						value="op_board"> <small><span
							class="glyphicon glyphicon-align-justify"></span>&nbsp;게시글형</small>
					</label>
				</div>
			</div>
		</div>
		<!-- /.row -->

		<!-- Projects Row -->
		<div class="row">
			<div class="col-md-2 portfolio-item img-responsive">
				<a href="#"> <img class="img-responsive img-thumbnail"
					src="http://placehold.it/140x140" alt="">
				</a>
				<h5>title</h5>
			</div>
			<div class="col-md-2 portfolio-item img-responsive">
				<a href="#"> <img class="img-responsive img-thumbnail"
					src="http://placehold.it/140x140" alt="">
				</a>
				<h5>title</h5>
			</div>
			<div class="col-md-2 portfolio-item img-responsive">
				<a href="#"> <img class="img-responsive img-thumbnail"
					src="http://placehold.it/140x140" alt="">
				</a>
				<h5>title</h5>
			</div>
			<div class="col-md-2 portfolio-item img-responsive">
				<a href="#"> <img class="img-responsive img-thumbnail"
					src="http://placehold.it/140x140" alt="">
				</a>
				<h5>title</h5>
			</div>
			<div class="col-md-2 portfolio-item img-responsive">
				<a href="#"> <img class="img-responsive img-thumbnail"
					src="http://placehold.it/140x140" alt="">
				</a>
				<h5>title</h5>
			</div>
			<div class="col-md-2 portfolio-item img-responsive">
				<a href="#"> <img class="img-responsive img-thumbnail"
					src="http://placehold.it/140x140" alt="">
				</a>
				<h5>title</h5>
			</div>
		</div>
		<!-- /.row -->

		<!-- Projects Row -->
		<div class="row center">
			<div class="col-md-2 portfolio-item">
				<a href="#"> <img class="img-responsive img-thumbnail"
					src="http://placehold.it/140x140" alt="">
				</a>
				<h5>title</h5>
			</div>
			<div class="col-md-2 portfolio-item img-responsive">
				<a href="#"> <img class="img-responsive img-thumbnail"
					src="http://placehold.it/140x140" alt="">
				</a>
				<h5>title</h5>
			</div>
			<div class="col-md-2 portfolio-item img-responsive">
				<a href="#"> <img class="img-responsive img-thumbnail"
					src="http://placehold.it/140x140" alt="">
				</a>
				<h5>title</h5>
			</div>
			<div class="col-md-2 portfolio-item img-responsive">
				<a href="#"> <img class="img-responsive img-thumbnail"
					src="http://placehold.it/140x140" alt="">
				</a>
				<h5>title</h5>
			</div>
			<div class="col-md-2 portfolio-item img-responsive">
				<a href="#"> <img class="img-responsive img-thumbnail"
					src="http://placehold.it/140x140" alt="">
				</a>
				<h5>title</h5>
			</div>
			<div class="col-md-2 portfolio-item img-responsive">
				<a href="#"> <img class="img-responsive img-thumbnail"
					src="http://placehold.it/140x140" alt="">
				</a>
				<h5>title</h5>
			</div>
		</div>
		<!-- /.row -->

		<!-- Pagination -->
		<div class="row text-center">
			<div class="col-lg-12">
				<input class="btn btn-primary navbar-right" type="button" value="글쓰기">
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
			<input type="text">&nbsp;<input class="btn btn-primary btn-sm" type="button" value="검색">
			</div>

		</div>
		<!-- /.row -->

		<hr>

		<!-- Footer -->
		<footer>
		<div class="row">
			<div class="col-lg-10">
				<p>Copyright &copy; Your Website 2014</p>
			</div>
		</div>
		<!-- /.row --> </footer>

	</div>
	<!-- /.container -->

</body>
</html>