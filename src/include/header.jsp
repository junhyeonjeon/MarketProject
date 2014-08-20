<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>

<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">

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