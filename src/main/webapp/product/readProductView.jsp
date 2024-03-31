<%--<%@page import="com.model2.mvc.service.domain.Product"%> --%>
<%@ page language="java" contentType="text/html; charset=EUC-KR" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--<% Product vo = (Product)request.getAttribute("ProdVO"); --%>
<html>
<head>
<title>��ǰ���</title>
	<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
	<script type="text/javascript">

		$(function () {
			//==> DOM Object GET 3���� ��� ==> 1. $(tagName) : 2.(#id) : 3.$(.className)
			$("button").on("click", function () {
				self.location = "/product/listProduct/manage"
			});
		});
		$(function () {
			//==> DOM Object GET 3���� ��� ==> 1. $(tagName) : 2.(#id) : 3.$(.className)
			$("#edit1").on("click", function () {
				self.location = "../product/addProductView.jsp"
			});
		});


	</script>
	<style>
		body {
			padding-top: 90px;
		}
	</style>
</head>

<body bgcolor="#ffffff" text="#000000">
<jsp:include page="/layout/toolbar.jsp" />
<div class = "bs-docs-section">
	<div class="row">
		<div class = "col-lg-12">
			<div class = "page-header">
				<h1 id = "navs">��ǰ�������</h1>
				<table class="table table-hover">
					<thead>
					<tr>
						<th scope="col">��ǰ��</th>
						<th scope="col">${ProdVO.prodName}</th>
					</tr>
					</thead>
					<tbody>
					<tr class="table-active">
						<th scope="row">��ǰ������</th>
						<td>${ProdVO.prodDetail}</td>
					</tr>
					</tbody>
					<thead>
					<tr>
						<th scope="col">��������</th>
						<th scope="col">${ProdVO.manuDate}</th>
					</tr>
					</thead>
					<tbody>
					<tr class="table-active">
						<th scope="row">����</th>
						<td>${ ProdVO.price }</td>
					</tr>
					</tbody>
					<thead>
					<tr>
						<th scope="col">��ǰ�̹���</th>
						<th scope="col"><img src="/images/uploadFiles/${ProdVO.fileName }" style="width: 200px; height: 200px;"/></th>
					</tr>
					</thead>
				</table>
				<!--  ȭ�鱸�� div Start /////////////////////////////////////-->
			</div>
		</div>
	</div>
</div>
<div class="row">
	<div class="col-md-12 text-center ">
		<button type="button" class="btn btn-primary" id = "edit">Ȯ ��</button>
		<button type="button" class="btn btn-primary" id = "edit1">�߰����</button>
	</div>
</div>
</body>

<%--<table width="100%" height="37" border="0" cellpadding="0" cellspacing="0">--%>
<%--	<tr>--%>
<%--		<td width="15" height="37">--%>
<%--			<img src="/images/ct_ttl_img01.gif" 	width="15" height="37"/>--%>
<%--		</td>--%>
<%--		<td background="/images/ct_ttl_img02.gif" width="100%" style="padding-left: 10px;">--%>
<%--			<table width="100%" border="0" cellspacing="0" cellpadding="0">--%>
<%--				<tr>--%>
<%--					<td width="93%" class="ct_ttl01">��ǰ���</td>--%>
<%--					<td width="20%" align="right">&nbsp;</td>--%>
<%--				</tr>--%>
<%--			</table>--%>
<%--		</td>--%>
<%--		<td width="12" height="37">--%>
<%--			<img src="/images/ct_ttl_img03.gif" width="12" height="37"/>--%>
<%--		</td>--%>
<%--	</tr>--%>
<%--</table>--%>

<%--<table width="100%" border="0" cellspacing="0" cellpadding="0" style="margin-top: 13px;">--%>
<%--	<tr>--%>
<%--		<td height="1" colspan="3" bgcolor="D6D6D6"></td>--%>
<%--	</tr>--%>
<%--	<tr>--%>
<%--		<td width="104" class="ct_write">--%>
<%--			��ǰ�� <img src="/images/ct_icon_red.gif" width="3" height="3" align="absmiddle"/>--%>
<%--		</td>--%>
<%--		<td bgcolor="D6D6D6" width="1"></td>--%>
<%--		<td class="ct_write01">--%>
<%--			<table width="100%" border="0" cellspacing="0" cellpadding="0">--%>
<%--				<tr>--%>
<%--					<td width="105">${ProdVO.prodName}--%>
<%--					<td></td>--%>
<%--				</tr>--%>
<%--			</table>--%>
<%--		</td>--%>
<%--	</tr>--%>
<%--	<tr>--%>
<%--		<td height="1" colspan="3" bgcolor="D6D6D6"></td>--%>
<%--	</tr>--%>

<%--	<tr>--%>
<%--		<td width="104" class="ct_write">--%>
<%--			��ǰ������ <img  src="/images/ct_icon_red.gif" width="3" height="3" align="absmiddle"/>--%>
<%--		</td>--%>
<%--		<td bgcolor="D6D6D6" width="1"></td>--%>
<%--		<td class="ct_write01">${ProdVO.prodDetail}--%>
<%--	</tr>--%>
<%--	<tr>--%>
<%--		<td height="1" colspan="3" bgcolor="D6D6D6"></td>--%>
<%--	</tr>--%>

<%--	<tr>--%>
<%--		<td width="104" class="ct_write">--%>
<%--			��������<img	src="/images/ct_icon_red.gif" width="3" height="3" align="absmiddle"/>--%>
<%--		</td>--%>
<%--		<td bgcolor="D6D6D6" width="1"></td>--%>
<%--		<td class="ct_write01">${ ProdVO.manuDate }--%>
<%--	</tr>--%>
<%--	<tr>--%>
<%--		<td height="1" colspan="3" bgcolor="D6D6D6"></td>--%>
<%--	</tr>--%>
<%--	<tr>--%>
<%--		<td width="104" class="ct_write">--%>
<%--			����<img 	src="/images/ct_icon_red.gif" width="3" height="3" align="absmiddle"/>--%>
<%--		</td>--%>
<%--		<td bgcolor="D6D6D6" width="1"></td>--%>
<%--		<td class="ct_write01">${ ProdVO.price }--%>
<%--	</tr>--%>

<%--	<tr>--%>
<%--		<td height="1" colspan="3" bgcolor="D6D6D6"></td>--%>
<%--	</tr>--%>
<%--	<tr>--%>
<%--		<td width="104" class="ct_write">��ǰ�̹���</td>--%>
<%--		<td bgcolor="D6D6D6" width="1"></td>--%>
<%--		<td class="ct_write01">--%>
<%--			<!-- ���̺� ���� -->--%>
<%--			<table border="0" cellspacing="0" cellpadding="0">--%>
<%--				<tr>--%>
<%--					<td height="26">--%>
<%--						<img src="/images/uploadFiles/${ProdVO.fileName }"/>--%>
<%--					</td>--%>
<%--				</tr>--%>
<%--			</table>--%>
<%--		</td>--%>
<%--	</tr>--%>
<%--	<tr>--%>
<%--		<td height="1" colspan="3" bgcolor="D6D6D6"></td>--%>
<%--	</tr>--%>
<%--</table>--%>

<%--<table width="100%" border="0" cellspacing="0" cellpadding="0" style="margin-top:10px;">--%>
<%--	<tr>--%>
<%--		<td width="53%"></td>--%>
<%--		<td align="right">--%>
<%--			<table border="0" cellspacing="0" cellpadding="0">--%>
<%--				<tr>					--%>
<%--					<td width="17" height="23">--%>
<%--						<img src="/images/ct_btnbg01.gif" width="17" height="23"/>--%>
<%--					</td>--%>
<%--					<td background="/images/ct_btnbg02.gif" class="ct_btn01" style="padding-top:3px;">--%>
<%--						<a href="/product/listProduct/manage">Ȯ��</a>--%>
<%--					</td>--%>
<%--					<td width="14" height="23">--%>
<%--						<img src="/images/ct_btnbg03.gif" width="14" height="23"/>--%>
<%--					</td>--%>
<%--					<td width="17" height="23">--%>
<%--						<img src="/images/ct_btnbg01.gif" width="17" height="23"/>--%>
<%--					</td>--%>
<%--					<td background="/images/ct_btnbg02.gif" class="ct_btn01" style="padding-top:3px;">--%>
<%--						<a href="../product/addProductView.jsp;">�߰����</a>--%>
<%--					</td>--%>
<%--					<td width="14" height="23">--%>
<%--						<img src="/images/ct_btnbg03.gif" width="14" height="23"/>--%>
<%--					</td>--%>
<%--				</tr>--%>
<%--			</table>--%>
<%--		</td>--%>
<%--	</tr>--%>
<%--</table>--%>

<%--</body>--%>
</html>