/*ȸ������ �ʼ� �Է� ���� üũ : ����*/
function goJoin() {
	var frm = document.join;
	frm.action = "./join_proc.jsp";

	/* �ʼ������� üũ�Ͽ� �߸��� �κ��� �˷��ش� */

	if (idTxt.innerHTML == null || idTxt.innerHTML == ""
			|| idTxt.innerHTML == "N" || !frm.userid.value) {
		alert("���̵� Ȯ�����ּ���");
		frm.userid.focus();
		return;
	}
	if (!frm.password1.value || !frm.password2.value) {
		alert("��й�ȣ�� �Է����ּ���");
		frm.password1.focus();
		return;
	}
	if (pwTxt.innerHTML == null || pwTxt.innerHTML == ""
			|| pwTxt.innerHTML == "N") {
		alert("��й�ȣ ��ġ ���θ� Ȯ�����ּ���");
		frm.password1.focus();
		return;
	}
	if (nameTxt.innerHTML == null || nameTxt.innerHTML == ""
			|| nameTxt.innerHTML == "N") {
		alert("�г����� Ȯ�����ּ���");
		frm.username.focus();
		return;
	}
	if (!frm.zipcode.value && !frm.address1.value) {
		alert("�ּҸ� �Է����ּ���");
		return;
	}
	if (emailTxt.innerHTML == null || emailTxt.innerHTML == ""
		|| emailTxt.innerHTML == "N") {
		alert("�̸����� Ȯ�����ּ���");
		frm.email.focus();
		return;
	}
	if (!frm.phone.value) {
		alert("����ó�� �Է����ּ���");
		frm.phone.focus();
		return;
	}

	frm.submit();
}
/* ȸ������ �ʼ� �Է� ���� üũ : ���� */

/* �ּ� ã�� : ���� */
function goFindZipcode() {
	// �ּ�ã�� â ����
	var winWidth = 500;
	var winHeight = 620;
	var winURL = "./zipcode.jsp";
	var winName = "zipcode";
	var winPosLeft = (screen.width - winWidth) / 2;
	var winPosTop = (screen.height - winHeight) / 2;
	var winOpt = "width=" + winWidth + ",height=" + winHeight + ",top="
			+ winPosTop + ",left=" + winPosLeft;

	window.open(winURL, winName, winOpt
			+ ",menubar=no,status=no,scrollbars=no,resizable=no");
}
function goSearch() {
	// �ּ� �˻�â ���ȣ��
	var frm = document.zipcode_form;
	frm.action = "./zipcode.jsp";
	frm.submit();
}
function goAddress(zipcode, address) {
	// ������ �ּҸ� ȸ������ â���� ����
	opener.document.getElementById("zipcode").value = zipcode;
	opener.document.getElementById("address1").value = address;
	opener.document.getElementById("addTxt").value = "Y";

	self.close();
}
/* �ּ� ã�� : �� */

/* �޴��� ���� : ���� */
function goChkPhone() {
	var winWidth = 400;
	var winHeight = 420;
	var winURL = "./phone.jsp";
	var winName = "phone";
	var winPosLeft = (screen.width - winWidth) / 2;
	var winPosTop = (screen.height - winHeight) / 2;
	var winOpt = "width=" + winWidth + ",height=" + winHeight + ",top="
			+ winPosTop + ",left=" + winPosLeft;

	window.open(winURL, winName, winOpt
			+ ",menubar=no,status=no,scrollbars=no,resizable=no");
}
function goCheck() {
	var frm = document.phonecheck_form;
	
	frm.action = "./phone.jsp";
	frm.submit();
}
function goCertCheck(ranNum) {
	var frm = document.phonecheck_form;
	var certNum = frm.certNum.value;
	var phone = frm.phone.value;
	
	if(ranNum != certNum){
		alert("������ȣ�� �ٸ��ϴ�");
		frm.certNum.focus();
		return;		
	}
	
	opener.document.getElementById("phone").value = phone;
	self.close();
}
/*�޴��� ���� : ��*/

/* �α��� : ���� */
function login_check() {
	var frm = document.login_form;
	frm.action = "./login_proc.jsp";

	if (!frm.userid.value) {
		alert("ȸ��ID�� �Է����ּ���");
		frm.userid.focus();
		return;
	}

	if (!frm.password.value) {
		alert("��й�ȣ�� �Է����ּ���");
		frm.password.focus();
		return;
	}

	frm.submit();
}
/* �α��� : �� */

/*
 * // ���̵� ����ϱ� function closeIDCheck() {
 * opener.document.getElementById("userid").value =
 * document.idcheck_form.userid.value;
 * opener.document.getElementById("idcheck").value = "Y"; self.close(); } // ���̵�
 * üũ â ���ȣ�� function goCheck() { var frm = document.idcheck_form; frm.action =
 * "./idcheck.jsp"; frm.submit(); } // ���̵� �ߺ�üũ â function openIDCheck() { //
 * �˾�â ���� window.open("./idcheck.jsp", "idcheck", "left=400, top=200,
 * width=300, height=320"); }
 */

/*
 * // ȸ������ function write_Check() {
 * 
 * var frm = document.join;
 * 
 * frm.action = "./src/index.jsp";
 * 
 * if (!frm.userid.value) { alert("ȸ��ID�� �Է����ּ���"); frm.userid.focus(); return; }
 * if (!frm.password1.value) { alert("��й�ȣ�� �Է����ּ���"); frm.password1.focus();
 * return; } if (frm.password1.value != frm.password2.value) { alert("��й�ȣ�� �ٽ�
 * Ȯ�����ּ���"); frm.password2.focus(); return; } if (!frm.username.value) {
 * alert("�̸��� �Է����ּ���"); frm.username.focus(); return; } if (!frm.zipcode.value) {
 * alert("�����ȣ�� �Է����ּ���"); frm.zipcode.focus(); return; } if
 * (!frm.address1.value) { alert("�ּҸ� �Է����ּ���"); frm.address1.focus(); return; }
 * if (!frm.address2.value) { alert("�������ּҸ� �Է����ּ���"); frm.address2.focus();
 * return; } if (!frm.email.value) { alert("�̸����� �Է����ּ���"); frm.email.focus();
 * return; } if (!frm.phone.value) { alert("����ó�� �Է����ּ���"); frm.phone.focus();
 * return; } }
 */