<%@page import="java.util.ArrayList"%>
<%@page import="com.myhome.zipcode.*"%>
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
<title>주소 찾기</title>

<!-- CSS -->
<link href="./css/bootstrap.min.css" rel="stylesheet">
<link href="./assets/css/docs.css" rel="stylesheet">

<!-- jQuery Version 1.11.0 -->
<script src="js/jquery-1.11.0.js"></script>

<!-- Bootstrap Core JavaScript -->
<script src="js/bootstrap.min.js"></script>

<!-- script -->
<script type="text/javascript" src="./js/member.js"></script>

</head>
<body style="padding-top: 15px">
	<%
		request.setCharacterEncoding("euc-kr");
		String eupmun = request.getParameter("eupmun");
		ArrayList<ZipcodeDto> list = null;
		
		if (eupmun != null && !eupmun.equals("")) {
			ZipcodeDao dao = new ZipcodeDao();
			list = (ArrayList<ZipcodeDto>)dao.getList(eupmun);
		}
	%>

	<form name="zipcode_form" method="post" class="form-horizontal"
		role="form">
		<div class="modal-dialog" style="margin-top: 0px;">
			<div class="modal-content">
				<div class="modal-header">
					<h4 class="modal-title">
						<span class="glyphicon glyphicon-ok"></span>&nbsp;<b>주소 찾기</b>
					</h4>
				</div>
				<div class="modal-body">
					<div class="form-group">
						<label class="col-lg-3 control-label">읍/면/동 입력</label>
						<div class="col-lg-6">
							<div class="input-group">
								<input name="eupmun" type="text" class="form-control"
									<%if (eupmun != null && !eupmun.equals("")) {%>
									value=<%=eupmun%> <%}%>>
								<span class="input-group-btn">
									<button class="btn btn-default" type="button"
										onclick="goSearch()">검색</button>
								</span>
							</div>
						</div>
						<div class="col-lg-8" style="text-align: center; margin-top: 10px;">
							<table class="table table-condensed table-hover">
								<colgroup>
									<col width="70">
									<col width="*">
								</colgroup>
								<thead>
									<tr class="text-center"
										style="font-weight: bolder; background-image: url('./images/table_mid.gif');">
										<td>우편번호</td>
										<td>주소</td>
									</tr>
								</thead>
								<%
									if(list!=null){
								%>
								<tbody>
								<%
									for(int i=0; i<list.size(); i++){
										ZipcodeDto dto = list.get(i);
								%>
									<tr>
										<td align="center"><h6><%=dto.getZipcode()%></h6></td>
										<td align="left">
										<a href="#none" onclick="goAddress('<%=dto.getZipcode()%>', '<%=dto.getAddress()%>')">
										<h6><%=dto.getAddress()%></h6>
										</a>
										</td>
									</tr>
								<% 
									}
								%>
								</tbody>
								<%
									}
								%>
							</table>
						</div>
					</div>
				</div>
			</div>
		</div>
	</form>
</body>
</html>