<%@ page contentType="text/html; charset=euc-kr" %>

<html>
<head>
	<title>��ǰ���</title>

	<link rel="stylesheet" href="/css/admin.css" type="text/css">
	<link rel="stylesheet" href="//code.jquery.com/ui/1.13.2/themes/base/jquery-ui.css">
	<link rel="stylesheet" href="/resources/demos/style.css">
	<meta name = "viewport" content="width=device-width, initial-scale=1">

	<script type="text/javascript" src="../javascript/calendar.js"></script>
	<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
	<script src="https://code.jquery.com/ui/1.13.2/jquery-ui.js"></script>


	<script type="text/javascript">

		function fncAddProduct(){
			//Form ��ȿ�� ����
			var name = document.detailForm.prodName.value;
			var detail = document.detailForm.prodDetail.value;
			var manuDate = document.detailForm.manuDate.value;
			var price = document.detailForm.price.value;

			if(name == null || name.length<1){
				alert("��ǰ���� �ݵ�� �Է��Ͽ��� �մϴ�.");
				return;
			}
			if(detail == null || detail.length<1){
				alert("��ǰ�������� �ݵ�� �Է��Ͽ��� �մϴ�.");
				return;
			}
			if(manuDate == null || manuDate.length<1){
				alert("�������ڴ� �ݵ�� �Է��ϼž� �մϴ�.");
				return;
			}
			if(price == null || price.length<1){
				alert("������ �ݵ�� �Է��ϼž� �մϴ�.");
				return;
			}

			document.detailForm.action='/product/addProduct';
			document.detailForm.submit();
		}

		function resetData(){
			document.detailForm.reset();
		}
		$( function() {
			$( document ).tooltip({
				position: {
					my: "center bottom-20",
					at: "center top",
					using: function( position, feedback ) {
						$( this ).css( position );
						$( "<div>" )
								.addClass( "arrow" )
								.addClass( feedback.vertical )
								.addClass( feedback.horizontal )
								.appendTo( this );
					}
				}
			});
		} );
	</script>
	<style>
		.ui-tooltip, .arrow:after {
			background: black;
			border: 2px solid white;
		}
		.ui-tooltip {
			padding: 10px 20px;
			color: white;
			border-radius: 20px;
			font: bold 14px "Helvetica Neue", Sans-Serif;
			text-transform: uppercase;
			box-shadow: 0 0 7px black;
		}
		.arrow {
			width: 70px;
			height: 16px;
			overflow: hidden;
			position: absolute;
			left: 50%;
			margin-left: -35px;
			bottom: -16px;
		}
		.arrow.top {
			top: -16px;
			bottom: auto;
		}
		.arrow.left {
			left: 20%;
		}
		.arrow:after {
			content: "";
			position: absolute;
			left: 20px;
			top: -20px;
			width: 25px;
			height: 25px;
			box-shadow: 6px 5px 9px -9px black;
			-webkit-transform: rotate(45deg);
			-ms-transform: rotate(45deg);
			transform: rotate(45deg);
		}
		.arrow.top:after {
			bottom: -20px;
			top: auto;
		}
	</style>
	</script>
</head>

<body bgcolor="#ffffff" text="#000000">

<form name="detailForm" method="post" enctype="multipart/form-data">

	<table width="100%" height="37" border="0" cellpadding="0"	cellspacing="0">
		<tr>
			<td width="15" height="37">
				<img src="/images/ct_ttl_img01.gif" width="15" height="37"/>
			</td>
			<td background="/images/ct_ttl_img02.gif" width="100%" style="padding-left: 10px;">
				<table width="100%" border="0" cellspacing="0" cellpadding="0">
					<tr>
						<td width="93%" class="ct_ttl01">��ǰ���</td>
						<td width="20%" align="right">&nbsp;</td>
					</tr>
				</table>
			</td>
			<td width="12" height="37">
				<img src="/images/ct_ttl_img03.gif"	width="12" height="37"/>
			</td>
		</tr>
	</table>

	<table width="100%" border="0" cellspacing="0" cellpadding="0"	style="margin-top: 13px;">
		<tr>
			<td height="1" colspan="3" bgcolor="D6D6D6"></td>
		</tr>
		<tr>
			<td width="104" class="ct_write">
				��ǰ�� <img src ="/images/ct_icon_red.gif" width="3" height="3" align="absmiddle">
			</td>
			<td bgcolor="D6D6D6" width="1"></td>
			<td class="ct_write01">
				<table width="100%" border="0" cellspacing="0" cellpadding="0">
					<tr>
						<td width="105">
							<input title = "��ǰ���� �Է����ּ���. " type="text" name="prodName" class="ct_input_g"
								   style="width: 100px; height: 19px" maxLength="20">
						</td>
					</tr>
				</table>
			</td>
		</tr>
		<tr>
			<td height="1" colspan="3" bgcolor="D6D6D6"></td>
		</tr>
		<tr>
			<td width="104" class="ct_write">
				��ǰ������ <img	src="/images/ct_icon_red.gif" width="3" height="3" align="absmiddle"/>
			</td>
			<td bgcolor="D6D6D6" width="1"></td>
			<td class="ct_write01">
				<input title = "��ǰ�������� �Է����ּ���." type="text" name="prodDetail" class="ct_input_g"
					   style="width: 100px; height: 19px" maxLength="10" minLength="6"/>
			</td>
		</tr>
		<tr>
			<td height="1" colspan="3" bgcolor="D6D6D6"></td>
		</tr>
		<tr>
			<td width="104" class="ct_write">
				�������� <img src="/images/ct_icon_red.gif" width="3" height="3" align="absmiddle"/>
			</td>
			<td bgcolor="D6D6D6" width="1"></td>
			<td class="ct_write01">
				<input title = "�������ڸ� ������ �ּ���." type="text" name="manuDate" readonly="readonly" class="ct_input_g"
					   style="width: 100px; height: 19px"	maxLength="10" minLength="6"/>
				&nbsp;<img src="../images/ct_icon_date.gif" width="15" height="15"
						   onclick="show_calendar('document.detailForm.manuDate', document.detailForm.manuDate.value)"/>
			</td>
		</tr>
		<tr>
			<td height="1" colspan="3" bgcolor="D6D6D6"></td>
		</tr>
		<tr>
			<td width="104" class="ct_write">
				���� <img src="/images/ct_icon_red.gif" width="3" height="3" align="absmiddle"/>
			</td>
			<td bgcolor="D6D6D6" width="1"></td>
			<td class="ct_write01">
				<input title ="������ �Է��� �ּ���." type="text" name="price" 	class="ct_input_g"
					   style="width: 100px; height: 19px" maxLength="10">&nbsp;��
			</td>
		</tr>
		<tr>
			<td height="1" colspan="3" bgcolor="D6D6D6"></td>
		</tr>
		<tr>
			<td width="104" class="ct_write">��ǰ�̹���</td>
			<td bgcolor="D6D6D6" width="1"></td>
			<td class="ct_write01">
				<input	type="file" name="uploadFile" class="ct_input_g"
						  style="width: 200px; height: 19px" maxLength="13"/>
			</td>
		</tr>
		<tr>
			<td height="1" colspan="3" bgcolor="D6D6D6"></td>
		</tr>
	</table>

	<table width="100%" border="0" cellspacing="0" cellpadding="0"	style="margin-top: 10px;">
		<tr>
			<td width="53%"></td>
			<td align="right">
				<table border="0" cellspacing="0" cellpadding="0">
					<tr>
						<td width="17" height="23">
							<img src="/images/ct_btnbg01.gif" width="17" height="23"/>
						</td>
						<td background="/images/ct_btnbg02.gif" class="ct_btn01"  style="padding-top: 3px;">
							<a href="javascript:fncAddProduct();">���</a>
						</td>
						<td width="14" height="23">
							<img src="/images/ct_btnbg03.gif" width="14" height="23"/>
						</td>
						<td width="30"></td>
						<td width="17" height="23">
							<img src="/images/ct_btnbg01.gif" width="17" height="23"/>
						</td>
						<td background="/images/ct_btnbg02.gif" class="ct_btn01"	 style="padding-top: 3px;">
							<a href="javascript:resetData();">���</a>
						</td>
						<td width="14" height="23">
							<img src="/images/ct_btnbg03.gif" width="14" height="23"/>
						</td>
					</tr>
				</table>
			</td>
		</tr>
	</table>

</form>
</body>
</html>