<%@ page contentType="text/html; charset=EUC-KR" %>
<%@ page pageEncoding="EUC-KR"%>

<!DOCTYPE html>
<html lang="ko">

<head>
	<meta charset="EUC-KR">

	<!-- ���� : http://getbootstrap.com/css/   ���� -->
	<meta name="viewport" content="width=device-width, initial-scale=1.0" />

	<%--<link href="https://maxcdn.bootstrapcdn.com/bootswatch/4.5.2/sketchy/bootstrap.min.css" rel="stylesheet">--%>

	<!-- Bootstrap 4 CSS -->
	<link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
	<!-- Bootstrap 4 CSS -->
	<link href="https://stackpath.bootstrapcdn.com/bootswatch/4.5.2/sketchy/bootstrap.min.css" rel="stylesheet">

	<!-- Bootstrap 4 JS bundle (includes Popper.js) -->
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.bundle.min.js"></script>
	<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
	<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
	<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
	<!-- Datepicker CSS -->
	<link href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.9.0/css/bootstrap-datepicker.min.css" rel="stylesheet">

	<!-- Datepicker JS -->
	<script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.9.0/js/bootstrap-datepicker.min.js"></script>

	<!-- Datepicker Locale -->
	<script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.9.0/locales/bootstrap-datepicker.ko.min.js"></script>

	<!-- CSS -->
	<style>

		body > div.container{
			border: 3px solid #606060;
			margin-top: 10px;
		}
	</style>

	<!-- JavaScript -->
	<script type="text/javascript">

		// "����" �̺�Ʈ ����
		$(function() {
			$("#Join").on("click" , function() {
				fncAddUser();
			});
		});

		// "���" �̺�Ʈ ó�� �� ����
		$(function() {
			$("a[href='#']").on("click" , function() {
				$("form")[0].reset();
			});
		});

		function fncAddUser() {
			var id = $("input[name='userId']").val();
			var pw = $("input[name='password']").val();
			var pw_confirm = $("input[name='password2']").val();
			var name = $("input[name='userName']").val();

			if(id == null || id.length < 1) {
				alert("���̵�� �ݵ�� �Է��ϼž� �մϴ�.");
				return;
			}
			if(pw == null || pw.length < 1) {
				alert("�н������ �ݵ�� �Է��ϼž� �մϴ�.");
				return;
			}
			if(pw_confirm == null || pw_confirm.length < 1) {
				alert("�н����� Ȯ���� �ݵ�� �Է��ϼž� �մϴ�.");
				return;
			}
			if(name == null || name.length < 1) {
				alert("�̸��� �ݵ�� �Է��ϼž� �մϴ�.");
				return;
			}

			if(pw != pw_confirm) {
				alert("��й�ȣ Ȯ���� ��ġ���� �ʽ��ϴ�.");
				$("input:text[name='password2']").focus();
				return;
			}

			var value = "";
			if($("input:text[name='phone2']").val() != "" && $("input:text[name='phone3']").val() != "") {
				var value = $("option:selected").val() + "-"
						+ $("input[name='phone2']").val() + "-"
						+ $("input[name='phone3']").val();
			}

			$("input:hidden[name='phone']").val(value);
			$("form").attr("method", "POST").attr("action", "/user/addUser").submit();
		}

		// "�̸���" ��ȿ�� �˻� �̺�Ʈ ó�� �� ����
		$(function() {
			$("input[name='email']").on("change" , function() {
				var email = $("input[name='email']").val();
				if(email != "" && (email.indexOf('@') < 1 || email.indexOf('.') == -1)) {
					alert("�̸��� ������ �ƴմϴ�.");
				}
			});
		});

		// �ֹι�ȣ ��ȿ�� �˻�
		function checkSsn() {
			var ssn = document.detailForm.ssn.value;
			if(!PortalJuminCheck(ssn)) {
				alert("�߸��� �ֹι�ȣ�Դϴ�.");
				return false;
			}
		}

		function PortalJuminCheck(fieldValue) {
			var pattern = /^([0-9]{6})-?([0-9]{7})$/;
			var num = fieldValue;
			if(!pattern.test(num)) return false;
			num = RegExp.$1 + RegExp.$2;

			var sum = 0;
			var last = num.charCodeAt(12) - 0x30;
			var bases = "234567892345";
			for(var i = 0; i < 12; i++) {
				if(isNaN(num.substring(i, i+1))) return false;
				sum += (num.charCodeAt(i) - 0x30) * (bases.charCodeAt(i) - 0x30);
			}
			var mod = sum % 11;
			return ((11 - mod) % 10 == last) ? true : false;
		}

		// "ID�ߺ�Ȯ��" �̺�Ʈ ó�� �� ����
		$(function() {
			$("#btn-info").on("click" , function() {
				popWin = window.open("/user/checkDuplication.jsp",
						"popWin",
						"left=300,top=200,width=780,height=130,marginwidth=0,marginheight=0," +
						"scrollbars=no,scrolling=no,menubar=no,resizable=no");
			});
		});

	</script>

</head>

<body>

<!-- ToolBar -->
<div class="navbar navbar-default">
	<div class="container">
		<a class="navbar-brand" href="/index.jsp">Model2 MVC Shop</a>
	</div>
</div>
<%--<input type="text" class="form-control" placeholder="Recipient's username" aria-label="Recipient's username" aria-describedby="button-addon2">--%>
<%--<button class="btn btn-primary" type="button" id="button-addon2">Button</button>--%>
<%--</div>--%>
<!-- ȭ�� ���� -->
<div class="container">
	<h1 class="bg-primary text-center" style="color: whitesmoke">ȸ�� ����</h1>

	<!-- Form -->
	<form class="form-horizontal">

	<div class="form-group">
		<label for="userId" class="col-sm-offset-1 col-sm-3 control-label">���̵�</label>
		<div class="col-sm-4">
			<div class="input-group">
				<input class="form-control" id="userId" name = "userId" type="text" placeholder="�ߺ� Ȯ���ϼ���" aria-describedby="btn-info" readonly>
				<button class="btn btn-primary" type="button" id="btn-info">�ߺ� Ȯ��</button>
<%--				<input type="text" class="form-control" id="userId" name="userId" placeholder="�ߺ� Ȯ���ϼ���" readonly>--%>
<%--				<span class="input-group-btn">--%>
<%--                    <button type="button" class="btn btn-info">�ߺ� Ȯ��</button>--%>
<%--                </span>--%>
			</div>
			<span class="help-block">
                <strong class="text-danger">�Է� �� �ߺ� Ȯ���ϼ���.</strong>
            </span>
		</div>
	</div>

	<div class="form-group">
		<label for="password" class="col-sm-offset-1 col-sm-3 control-label">��й�ȣ</label>
		<div class="col-sm-4">
			<input type="password" class="form-control" id="password" name="password" placeholder="��й�ȣ">
		</div>
	</div>

	<div class="form-group">
		<label for="password2" class="col-sm-offset-1 col-sm-3 control-label">��й�ȣ Ȯ��</label>
		<div class="col-sm-4">
			<input type="password" class="form-control" id="password2" name="password2" placeholder="��й�ȣ Ȯ��">
		</div>
	</div>

	<div class="form-group">
		<label for="userName" class="col-sm-offset-1 col-sm-3 control-label">�̸�</label>
		<div class="col-sm-4">
			<input type="text" class="form-control" id="userName" name="userName" placeholder="ȸ�� �̸�">
		</div>
	</div>

	<div class="form-group">
		<label for="ssn" class="col-sm-offset-1 col-sm-3 control-label">�ֹι�ȣ</label>
		<div class="col-sm-4">
			<input type="text" class="form-control" id="ssn" name="ssn" placeholder="�ֹι�ȣ">
			<span id="helpBlock" class="help-block">
                <strong class="text-danger">"- ���� 13�ڸ� �Է��ϼ���</strong>
            </span>
		</div>
	</div>

	<div class="form-group">
		<label for="addr" class="col-sm-offset-1 col-sm-3 control-label">�ּ�</label>
		<div class="col-sm-4">
			<input type="text" class="form-control" id="addr" name="addr" placeholder="�ּ�">
		</div>
	</div>

		<div class="form-group">
			<label for="phone1" class="col-sm-offset-1 col-sm-3 control-label">�޴���ȭ��ȣ</label>
			<div class ="row">
			<div class="col-sm-2">
				<select class="form-control" name="phone1" id="phone1">
					<option value="010" >010</option>
					<option value="011" >011</option>
					<option value="016" >016</option>
					<option value="018" >018</option>
					<option value="019" >019</option>
				</select>
			</div>
			<div class="col-sm-2">
				<input type="text" class="form-control" id="phone2" name="phone2" placeholder="��ȣ">
			</div>
			<div class="col-sm-2">
				<input type="text" class="form-control" id="phone3" name="phone3" placeholder="��ȣ">
			</div>
			</div>
			<input type="hidden" name="phone"  />
		</div>


	<div class="form-group">
		<label for="email" class="col-sm-offset-1 col-sm-3 control-label">�̸���</label>
		<div class="col-sm-4">
			<input type="text" class="form-control" id="email" name="email" placeholder="�̸���">
		</div>
	</div>

	<div class="form-group">
		<div class="col-sm-offset-4 col-sm-4 d-flex justify-content-end">
			<button type="button" class="btn btn-primary" id="Join">�� &nbsp;��</button>
			<a class="btn btn-primary btn" href="#" role="button">��&nbsp;��</a>
		</div>
	</div>
	</form>
</div>

</body>

</html>

