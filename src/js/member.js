/*회원가입 필수 입력 정보 체크 : 시작*/
function goJoin() {
	var frm = document.join;
	frm.action = "./join_proc.jsp";

	/* 필수정보를 체크하여 잘못된 부분을 알려준다 */

	if (idTxt.innerHTML == null || idTxt.innerHTML == ""
			|| idTxt.innerHTML == "N" || !frm.userid.value) {
		alert("아이디를 확인해주세요");
		frm.userid.focus();
		return;
	}
	if (!frm.password1.value || !frm.password2.value) {
		alert("비밀번호를 입력해주세요");
		frm.password1.focus();
		return;
	}
	if (pwTxt.innerHTML == null || pwTxt.innerHTML == ""
			|| pwTxt.innerHTML == "N") {
		alert("비밀번호 일치 여부를 확인해주세요");
		frm.password1.focus();
		return;
	}
	if (nameTxt.innerHTML == null || nameTxt.innerHTML == ""
			|| nameTxt.innerHTML == "N") {
		alert("닉네임을 확인해주세요");
		frm.username.focus();
		return;
	}
	if (!frm.zipcode.value && !frm.address1.value) {
		alert("주소를 입력해주세요");
		return;
	}
	if (!frm.email.value) {
		alert("이메일을 입력해주세요");
		frm.email.focus();
		return;
	}
	if (!frm.phone.value) {
		alert("연락처를 입력해주세요");
		frm.phone.focus();
		return;
	}

	frm.submit();
}
/*회원가입 필수 입력 정보 체크 : 시작*/

/* 주소 찾기 : 시작 */
function goFindZipcode() {
	// 주소찾기 창 띄우기
	window.open("./zipcode.jsp", "zipcode",
			"left=400, top=200, width=500, height=620");
}
function goSearch() {
	// 주소 검색창 재귀호출
	var frm = document.zipcode_form;
	frm.action = "./zipcode.jsp";
	frm.submit();
}
function goAddress(zipcode, address) {
	// 선택한 주소를 회원가입 창으로 전달
	opener.document.getElementById("zipcode").value = zipcode;
	opener.document.getElementById("address1").value = address;

	self.close();
}
/* 주소 찾기 : 끝 */

/* 로그인 : 시작 */
function login_check() {
	var frm = document.login_form;
	frm.action = "./login_proc.jsp";

	if (!frm.userid.value) {
		alert("회원ID를 입력해주세요");
		frm.userid.focus();
		return;
	}

	if (!frm.password.value) {
		alert("비밀번호를 입력해주세요");
		frm.password.focus();
		return;
	}

	frm.submit();
}
/* 로그인 : 끝 */

/*
// 아이디 사용하기
function closeIDCheck() {
	opener.document.getElementById("userid").value = document.idcheck_form.userid.value;
	opener.document.getElementById("idcheck").value = "Y";
	self.close();
}

// 아이디 체크 창 재귀호출
function goCheck() {
	var frm = document.idcheck_form;
	frm.action = "./idcheck.jsp";
	frm.submit();
}

// 아이디 중복체크 창
function openIDCheck() {
	// 팝업창 띄우기
	window.open("./idcheck.jsp", "idcheck",
			"left=400, top=200, width=300, height=320");
}
*/

/*
// 회원가입
function write_Check() {

	var frm = document.join;

	frm.action = "./src/index.jsp";

	if (!frm.userid.value) {
		alert("회원ID를 입력해주세요");
		frm.userid.focus();
		return;
	}
	if (!frm.password1.value) {
		alert("비밀번호를 입력해주세요");
		frm.password1.focus();
		return;
	}
	if (frm.password1.value != frm.password2.value) {
		alert("비밀번호를 다시 확인해주세요");
		frm.password2.focus();
		return;
	}
	if (!frm.username.value) {
		alert("이름을 입력해주세요");
		frm.username.focus();
		return;
	}
	if (!frm.zipcode.value) {
		alert("우편번호를 입력해주세요");
		frm.zipcode.focus();
		return;
	}
	if (!frm.address1.value) {
		alert("주소를 입력해주세요");
		frm.address1.focus();
		return;
	}
	if (!frm.address2.value) {
		alert("나머지주소를 입력해주세요");
		frm.address2.focus();
		return;
	}
	if (!frm.email.value) {
		alert("이메일을 입력해주세요");
		frm.email.focus();
		return;
	}
	if (!frm.phone.value) {
		alert("연락처를 입력해주세요");
		frm.phone.focus();
		return;
	}

}*/