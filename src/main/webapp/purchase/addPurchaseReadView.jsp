<%-- <%@page import="com.model2.mvc.service.domain.Purchase"%> --%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"%>
<%-- 
<%
Purchase vo = (Purchase)request.getAttribute("addVO");
%>
--%>
<html>
<head>
<title>Insert title here</title>
</head>

<body>

<form name="updatePurchase" action="/purchase/updatePurchase/${addVO.tranNo }" method="post">

������ ���� ���Ű� �Ǿ����ϴ�.

<table border=1>
	<tr>
		<td>��ǰ��ȣ</td>
		<td>${ addVO.purchaseProd.prodNo }</td>
		<td></td>
	</tr>
	<tr>
		<td>�����ھ��̵�</td>
		<td>${ addVO.buyer.userId }</td>
		<td></td>
	</tr>
	<tr>
		<td>���Ź��</td>
		<td>${ addVO.paymentOption }</td>
		<td></td>
	</tr>
	<tr>
		<td>�������̸�</td>
		<td>${ addVO.receiverName }</td>
		<td></td>
	</tr>
	<tr>
		<td>�����ڿ���ó</td>
		<td>${ addVO.receiverPhone }</td>
		<td></td>
	</tr>
	<tr>
		<td>�������ּ�</td>
		<td>${ addVO.divyAddr }</td>
		<td></td>
	</tr>
		<tr>
		<td>���ſ�û����</td>
		<td>${ addVO.divyRequest }</td>
		<td></td>
	</tr>
	<tr>
		<td>����������</td>
		<td>${ addVO.divyDate }</td>
		<td></td>
	</tr>
</table>
</form>

</body>
</html>