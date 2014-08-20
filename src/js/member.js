//주소찾기 창 띄우기
function goFindZipcode() {
	window.open("./zipcode.jsp", "zipcode",
			"left=400, top=200, width=500, height=620");
}

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

// 로그인
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

// 회원가입
function write_Check() {

	var frm = document.join;

	frm.action = "../src/index.jsp";

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

}