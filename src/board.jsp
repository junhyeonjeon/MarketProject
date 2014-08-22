<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ include file="./include/header.jsp"%>
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

<!-- script -->
<script type="text/javascript" src="./js/member.js"></script>

</head>
<body>

	<!-- Page Content -->
	<div class="container">

		<!-- Page Heading -->
		<div class="row">
			<div class="col-lg-12">
				<h1 class="page-header">
					벼룩시장 <small>&lt;팝니다&gt;</small>

				</h1>
				<div class="btn-group btn-group-sm">
					<input type="button" class="btn btn-warning active" value="팝니다">
					<input type="button" class="btn btn-warning" value="삽니다">
				</div>
				<div class="navbar-right radio">
					<label> <input type="radio" name="optionsRadios"
						value="op_album"> <small><span
							class="glyphicon glyphicon-th-large"></span>&nbsp;앨범형</small></label> &nbsp; <label>
						<input type="radio" name="optionsRadios" value="op_board"
						checked="checked"> <small><span
							class="glyphicon glyphicon-align-justify"> </span>&nbsp;게시글형</small>
					</label>
				</div>
			</div>
		</div>
		<!-- /.row -->

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
					</tbody>
				</table>
			</div>
		</div>

		<!-- Pagination -->
		<div class="row text-center">
			<div class="col-lg-12">
				<input class="btn btn-primary navbar-right" type="button"
					value="글쓰기" data-toggle="modal" data-target="#writeModal">
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
					class="btn btn-primary btn-sm" type="button" value="검색">
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


	<!-- 글쓰기모달 : 시작 -->
	<div class="modal fade" id="writeModal" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel" aria-hidden="true">
		<form name="write_form" method="post" class="form-horizontal"
			role="form">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal"
							aria-hidden="true">×</button>
						<h4 class="modal-title">
							<span class="glyphicon glyphicon-pencil"></span>&nbsp;WRITE
						</h4>
					</div>
					<div class="modal-body">
						<div class="form-group">
							<div class="col-lg-2">
								<label class="control-label">카테고리</label>
							</div>
							<div class="col-lg-4">
								<select class="form-control">
									<option value="">게시판선택</option>
									<option value="board_sell">벼룩시장(팝니다)</option>
									<option value="board_buy">벼룩시장(삽니다)</option>
									<option value="room_board">원룸정보</option>
								</select>
							</div>
						</div>
						<div class="form-group">
							<div class="col-lg-2">
								<label class="control-label">제목</label>
							</div>
							<div class="col-lg-10">
								<input type="text" class="form-control" placeholder="제목을 입력하세요">
							</div>
						</div>
						<div class="form-group">
							<div class="col-lg-2">
								<label class="control-label">내용</label>
							</div>
							<div class="col-lg-10">
								<textarea class="form-control" style="height: 180px"></textarea>
							</div>
						</div>
						<div class="form-group">
							<div class="col-lg-2">
								<label class="control-label">첨부파일</label>
							</div>
							<div class="col-lg-10">
								<input type="file" class="control-label">
							</div>
						</div>
					</div>

					<div class="modal-footer">
						<button type="button" class="btn btn-default" data-dismiss="modal">취소</button>
						<button type="button" class="btn btn-primary">작성완료</button>
					</div>
				</div>
			</div>
		</form>
	</div>
	<!-- 글쓰기모달 : 끝 -->
</body>
</html>