var xmlReq; // ���������� ����.
// Ajax ��ü ���� ����
function createAjax() {
	xmlReq = new XMLHttpRequest();
}

// Ajax ��ü�� �̿��� ������ ���� ����
function ajaxSend(type) {

	createAjax();
	if (type == "id") {
		var uid = document.getElementById("userid").value;
		xmlReq.onreadystatechange = callBack_id;
		xmlReq.open("get", "ajax_receiveId.jsp?uid=" + uid, true);
	} else if (type == "name") {
		var name = document.getElementById("username").value;
		xmlReq.onreadystatechange = callBack_name;
		xmlReq.open("get", "ajax_receiveName.jsp?username=" + name, true);
	}

	xmlReq.send(null);
	// send�� �������� �񵿱���̱� ������ ���α׷��� ��� ����ȴ�.
}

// �ݹ� �Լ� ����
function callBack_id() {
	if (xmlReq.readyState == 4) {
		if (xmlReq.status == 200) {
			printData('id');
		}
	}
}

// �ݹ� �Լ� ����
function callBack_name() {
	if (xmlReq.readyState == 4) {
		if (xmlReq.status == 200) {
			printData('name');
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
			rootTag.innerHTML = "��� ������ ���̵�";
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
			rootTag.innerHTML = "��� ������ �г���";
			nameTag.innerHTML = "Y";
		} else {
			rootTag.innerHTML = "�̹� ������� �г���";
			nameTag.innerHTML = "N";
		}
	}
}

// ��й�ȣ ��ġ�ϴ��� üũ
function checkpwd() {
	var pwd1 = document.getElementById("password1").value;
	var pwd2 = document.getElementById("password2").value;

	var rootTag = document.getElementById("pw_result");
	var pwTag = document.getElementById("pwTxt");

	if (pwd1 == pwd2) {
		rootTag.innerHTML = "��й�ȣ ��ġ";
		pwTag.innerHTML = "Y";
	} else {
		rootTag.innerHTML = "��й�ȣ ����ġ";
		pwTag.innerHTML = "N";
	}
}