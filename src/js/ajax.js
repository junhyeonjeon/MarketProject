var xmlReq; // 전역변수로 지정.
// Ajax 객체 생성 과정
function createAjax() {
	xmlReq = new XMLHttpRequest();
}

// Ajax 객체를 이용한 데이터 전송 과정
function ajaxSend(type, obj) {

	var pattern = /[^(a-z0-9_)]/;

	if (type == "id") {
		var uid = document.getElementById("userid").value;
		if (uid == "" || pattern.test(obj.value)) {
			document.getElementById("id_result").innerHTML = "5~12자의 영문 소문자, 숫자와 특수기호(_)만 사용 가능합니다";
			obj.focus();
			return;
		}
		createAjax();
		xmlReq.onreadystatechange = callBack_id;
		xmlReq.open("get", "ajax_receive.jsp?type=userid&value=" + uid, true);
	} else if (type == "name") {
		var name = document.getElementById("username").value;
		if (name == "") {
			document.getElementById("name_result").innerHTML = "필수 정보입니다";
			return;
		}
		createAjax();
		xmlReq.onreadystatechange = callBack_name;
		xmlReq.open("get", "ajax_receive.jsp?type=username&value=" + name, true);
	} else if (type == "email") {
		var email = document.getElementById("email").value;
		if (email == "") {
			document.getElementById("email_result").innerHTML = "필수 정보입니다";
			return;
		}
		createAjax();
		xmlReq.onreadystatechange = callBack_email;
		xmlReq.open("get", "ajax_receive.jsp?type=email&value=" + email, true);
	}

	xmlReq.send(null);
	// send가 끝나고나면 비동기식이기 때문에 프로그램이 계속 진행된다.
}

// 아이디 콜백 함수 과정
function callBack_id() {
	if (xmlReq.readyState == 4) {
		if (xmlReq.status == 200) {
			printData('id');
		}
	}
}

// 네임 콜백 함수 과정
function callBack_name() {
	if (xmlReq.readyState == 4) {
		if (xmlReq.status == 200) {
			printData('name');
		}
	}
}

//이메일 콜백 함수 과정
function callBack_email() {
	if (xmlReq.readyState == 4) {
		if (xmlReq.status == 200) {
			printData('email');
		}
	}
}

// 결과 출력 과정
function printData(type) {
	var result = xmlReq.responseXML;

	if (type == "id") {
		var rootNode = result.documentElement;
		// <root>true</root> , <root>false</root>
		var rootValue = rootNode.firstChild.nodeValue;
		var rootTag = document.getElementById("id_result");

		var idNode = rootNode.getElementsByTagName("id");
		var idValue = idNode.item(0).firstChild.nodeValue;
		var idTag = document.getElementById("idTxt");

		if (rootValue == "true") {
			rootTag.innerHTML = "";
			idTag.innerHTML = "Y";
		} else {
			rootTag.innerHTML = "이미 사용중인 아이디";
			idTag.innerHTML = "N";
		}
	}

	else if (type == "name") {
		var rootNode = result.documentElement;
		// <root>true</root> , <root>false</root>
		var rootValue = rootNode.firstChild.nodeValue;
		var rootTag = document.getElementById("name_result");

		var nameTag = document.getElementById("nameTxt");

		if (rootValue == "true") {
			rootTag.innerHTML = "";
			nameTag.innerHTML = "Y";
		} else {
			rootTag.innerHTML = "이미 사용중인 닉네임";
			nameTag.innerHTML = "N";
		}
	}
	
	else if (type == "email") {
		var rootNode = result.documentElement;
		// <root>true</root> , <root>false</root>
		var rootValue = rootNode.firstChild.nodeValue;
		var rootTag = document.getElementById("email_result");

		var emailTag = document.getElementById("emailTxt");

		if (rootValue == "true") {
			rootTag.innerHTML = "";
			emailTag.innerHTML = "Y";
		} else {
			rootTag.innerHTML = "이미 사용중인 이메일";
			emailTag.innerHTML = "N";
		}
	}
}

// 비밀번호 일치하는지 체크
function checkpwd() {
	var pwd1 = document.getElementById("password1").value;
	var pwd2 = document.getElementById("password2").value;

	var rootTag = document.getElementById("pw_result");
	var pwTag = document.getElementById("pwTxt");

	if (pwd1 == "" || pwd2 == "") {
		rootTag.innerHTML = "필수 정보입니다";
		pwTag.innerHTML = "N";
	} else if (pwd1 == pwd2) {
		rootTag.innerHTML = "";
		pwTag.innerHTML = "Y";
	} else if (pwd1 != pwd2) {
		rootTag.innerHTML = "비밀번호 불일치";
		pwTag.innerHTML = "N";
	}
}