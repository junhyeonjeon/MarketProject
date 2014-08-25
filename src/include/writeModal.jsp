<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
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