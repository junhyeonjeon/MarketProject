var xmlReq; // ���������� ����.
// Ajax ��ü ���� ����
function createAjax() {
	xmlReq = new XMLHttpRequest();
}

// Ajax ��ü�� �̿��� ������ ���� ����
function ajaxSend(type, obj) {

	var pattern = /[^(a-z0-9_)]/;

	if (type == "id") {
		var uid = document.getElementById("userid").value;
		if (uid == "" || pattern.test(obj.value)) {
			document.getElementById("id_result").innerHTML = "5~12���� ���� �ҹ���, ���ڿ� Ư����ȣ(_)�� ��� �����մϴ�";
			obj.focus();
			return;
		}
		createAjax();
		xmlReq.onreadystatechange = callBack_id;
		xmlReq.open("get", "ajax_receive.jsp?type=userid&value=" + uid, true);
	} else if (type == "name") {
		var name = document.getElementById("username").value;
		if (name == "") {
			document.getElementById("name_result").innerHTML = "�ʼ� �����Դϴ�";
			return;
		}
		createAjax();
		xmlReq.onreadystatechange = callBack_name;
		xmlReq.open("get", "ajax_receive.jsp?type=username&value=" + name, true);
	} else if (type == "email") {
		var email = document.getElementById("email").value;
		if (email == "") {
			document.getElementById("email_result").innerHTML = "�ʼ� �����Դϴ�";
			return;
		}
		createAjax();
		xmlReq.onreadystatechange = callBack_email;
		xmlReq.open("get", "ajax_receive.jsp?type=email&value=" + email, true);
	}

	xmlReq.send(null);
	// send�� �������� �񵿱���̱� ������ ���α׷��� ��� ����ȴ�.
}

// ���̵� �ݹ� �Լ� ����
function callBack_id() {
	if (xmlReq.readyState == 4) {
		if (xmlReq.status == 200) {
			printData('id');
		}
	}
}

// ���� �ݹ� �Լ� ����
function callBack_name() {
	if (xmlReq.readyState == 4) {
		if (xmlReq.status == 200) {
			printData('name');
		}
	}
}

//�̸��� �ݹ� �Լ� ����
function callBack_email() {
	if (xmlReq.readyState == 4) {
		if (xmlReq.status == 200) {
			printData('email');
		}
	}
}

// ��� ��� ����
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
			rootTag.innerHTML = "�̹� ������� ���̵�";
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
			rootTag.innerHTML = "�̹� ������� �г���";
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
			rootTag.innerHTML = "�̹� ������� �̸���";
			emailTag.innerHTML = "N";
		}
	}
}

// ��й�ȣ ��ġ�ϴ��� üũ
function checkpwd() {
	var pwd1 = document.getElementById("password1").value;
	var pwd2 = document.getElementById("password2").value;

	var rootTag = document.getElementById("pw_result");
	var pwTag = document.getElementById("pwTxt");

	if (pwd1 == "" || pwd2 == "") {
		rootTag.innerHTML = "�ʼ� �����Դϴ�";
		pwTag.innerHTML = "N";
	} else if (pwd1 == pwd2) {
		rootTag.innerHTML = "";
		pwTag.innerHTML = "Y";
	} else if (pwd1 != pwd2) {
		rootTag.innerHTML = "��й�ȣ ����ġ";
		pwTag.innerHTML = "N";
	}
}