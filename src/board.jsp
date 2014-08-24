<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ include file="./include/header.jsp"%>
<%@ page import="com.myhome.univ.*"%>
<%@page import="java.util.ArrayList"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1.0, user-scalable=no">

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
		<div class="container">
			<!-- 게시판 리스트 헤더 : 시작 -->
			<div class="row">
				<div class="row page-header">
					<div class="col-md-1"></div>
					<div class="btn-group btn-group-sm col-md-2" data-toggle="buttons">
						<label class="btn btn-warning">
							<input type="radio" name="options" value="1">팝니다
						</label>
						<label class="btn btn-warning">
							<input type="radio" name="options" value="2">삽니다
						</label>
						
					</div>
					<div class="col-md-2">
						<select name="univOpt" class="form-control">
							<option>----- 대학선택 -----</option>
							<%
								univDao dao = new univDao();
								ArrayList<univDto> list = new ArrayList<univDto>();
							%>
							<optgroup label="<ㄱ>"></optgroup>
							<%
								list = (ArrayList) dao.getList("가", "나");
								for (int i = 0; i < list.size(); i++) {
									univDto dto = list.get(i);
							%>
							<option value="<%=dto.getUnivname()%>"><%=dto.getUnivname()%></option>
							<%
								}
							%>
							<optgroup label=""></optgroup>
							<optgroup label="<ㄴ>"></optgroup>
							<%
								list = (ArrayList) dao.getList("나", "다");
								for (int i = 0; i < list.size(); i++) {
									univDto dto = list.get(i);
							%>
							<option value="<%=dto.getUnivname()%>"><%=dto.getUnivname()%></option>
							<%
								}
							%>
							<optgroup label=""></optgroup>
							<optgroup label="<ㄷ>"></optgroup>
							<%
								list = (ArrayList) dao.getList("다", "라");
								for (int i = 0; i < list.size(); i++) {
									univDto dto = list.get(i);
							%>
							<option value="<%=dto.getUnivname()%>"><%=dto.getUnivname()%></option>
							<%
								}
							%>
							<optgroup label=""></optgroup>
							<optgroup label="<ㄹ>"></optgroup>
							<%
								list = (ArrayList) dao.getList("라", "마");
								for (int i = 0; i < list.size(); i++) {
									univDto dto = list.get(i);
							%>
							<option value="<%=dto.getUnivname()%>"><%=dto.getUnivname()%></option>
							<%
								}
							%>
							<optgroup label=""></optgroup>
							<optgroup label="<ㅁ>"></optgroup>
							<%
								list = (ArrayList) dao.getList("마", "바");
								for (int i = 0; i < list.size(); i++) {
									univDto dto = list.get(i);
							%>
							<option value="<%=dto.getUnivname()%>"><%=dto.getUnivname()%></option>
							<%
								}
							%>
							<optgroup label=""></optgroup>
							<optgroup label="<ㅂ>"></optgroup>
							<%
								list = (ArrayList) dao.getList("바", "사");
								for (int i = 0; i < list.size(); i++) {
									univDto dto = list.get(i);
							%>
							<option value="<%=dto.getUnivname()%>"><%=dto.getUnivname()%></option>
							<%
								}
							%><optgroup label=""></optgroup>
							<optgroup label="<ㅅ>"></optgroup>
							<%
								list = (ArrayList) dao.getList("사", "아");
								for (int i = 0; i < list.size(); i++) {
									univDto dto = list.get(i);
							%>
							<option value="<%=dto.getUnivname()%>"><%=dto.getUnivname()%></option>
							<%
								}
							%><optgroup label=""></optgroup>
							<optgroup label="<ㅇ>"></optgroup>
							<%
								list = (ArrayList) dao.getList("아", "자");
								for (int i = 0; i < list.size(); i++) {
									univDto dto = list.get(i);
							%>
							<option value="<%=dto.getUnivname()%>"><%=dto.getUnivname()%></option>
							<%
								}
							%><optgroup label=""></optgroup>
							<optgroup label="<ㅈ>"></optgroup>
							<%
								list = (ArrayList) dao.getList("자", "차");
								for (int i = 0; i < list.size(); i++) {
									univDto dto = list.get(i);
							%>
							<option value="<%=dto.getUnivname()%>"><%=dto.getUnivname()%></option>
							<%
								}
							%><optgroup label=""></optgroup>
							<optgroup label="<ㅊ>"></optgroup>
							<%
								list = (ArrayList) dao.getList("차", "카");
								for (int i = 0; i < list.size(); i++) {
									univDto dto = list.get(i);
							%>
							<option value="<%=dto.getUnivname()%>"><%=dto.getUnivname()%></option>
							<%
								}
							%><optgroup label=""></optgroup>
							<optgroup label="<ㅋ>"></optgroup>
							<%
								list = (ArrayList) dao.getList("카", "타");
								for (int i = 0; i < list.size(); i++) {
									univDto dto = list.get(i);
							%>
							<option value="<%=dto.getUnivname()%>"><%=dto.getUnivname()%></option>
							<%
								}
							%><optgroup label=""></optgroup>
							<optgroup label="<ㅍ>"></optgroup>
							<%
								list = (ArrayList) dao.getList("파", "하");
								for (int i = 0; i < list.size(); i++) {
									univDto dto = list.get(i);
							%>
							<option value="<%=dto.getUnivname()%>"><%=dto.getUnivname()%></option>
							<%
								}
							%><optgroup label=""></optgroup>
							<optgroup label="<ㅎ>"></optgroup>
							<%
								list = (ArrayList) dao.getList("하", "하");
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
							<option>---- 게시판선택 ----</option>
							<option value="직거래">직거래</option>
							<option value="안전거래">안전거래</option>
						</select>
					</div>
					<div class="col-md-2">
						<input type="text" class="form-control">
					</div>
					<div class="col-md-1">
						<input type="button" class="btn btn-success" value="검색" onclick="boardCheck()">
					</div>
					<div class="col-md-1"></div>
					<div class="col-md-2"></div>


					<!-- 게시판리스트 뷰어 옵션버튼
				<div class="navbar-right radio">
					<label> <input type="radio" name="optionsRadios"
						value="op_album"> <small><span
							class="glyphicon glyphicon-th-large"></span>&nbsp;앨범형</small></label> &nbsp; <label>
						<input type="radio" name="optionsRadios" value="op_board"
						checked="checked"> <small><span
							class="glyphicon glyphicon-align-justify"> </span>&nbsp;게시글형</small>
					</label>
				</div> -->
				</div>
			</div>
			<!-- 게시판 리스트 헤더 : 끝 -->

			<!-- 게시판 리스트 바디 : 시작 -->
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
			<!-- 게시판 리스트 바디 : 끝 -->

			<!-- 게시판 리스트 아래 글쓰기, 검색, 페이징 : 시작 -->
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
			<!-- 게시판 리스트 아래 글쓰기, 검색, 페이징 : 끝 -->

			<hr>

			<!-- Footer : 시작 -->
			<footer>
			<div class="row">
				<div class="col-lg-10">
					<p>Copyright &copy; Your Website 2014</p>
				</div>
			</div>
			</footer>
			<!-- Footer : 끝 -->

		</div>
	</form>

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
									<option value="">구분</option>
									<option value="sell">팝니다</option>
									<option value="buy">삽니다</option>
								</select>
							</div>
							<div class="col-lg-4">
								<select class="form-control">
									<option value="">학교선택</option>
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
