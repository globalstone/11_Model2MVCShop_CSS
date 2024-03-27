<%@ page language="java" contentType="text/html; charset=EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%-- 
<%@page import="java.util.*"%>
<%@page import="com.model2.mvc.common.Page"%>
<%@page import="com.model2.mvc.service.domain.Product"%>
<%@page import="com.model2.mvc.service.purchase.vo.PurchaseVO"%>
<%@page import="com.model2.mvc.common.Search"%>
<%@page import="com.model2.mvc.common.util.CommonUtil"%>

<%
	List<Product> list =(List<Product>)request.getAttribute("list");
	Search search=(Search)request.getAttribute("search");
	Page resultPage = (Page)request.getAttribute("resultPage");
	//Purchase pur = new Purchase();
	String menu = (String)request.getAttribute("menu");
	String searchCondition = CommonUtil.null2str(search.getSearchCondition());
	String searchKeyword = CommonUtil.null2str(search.getSearchKeyword());
	
%>
--%>

<html>
<head>
<title>��ǰ �����ȸ</title>

<link rel="stylesheet" href="/css/admin.css" type="text/css">
	<script src="http://code.jquery.com/jquery-2.1.4.min.js"></script>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
	<meta name="description" content="">
	<meta name="author" content="">
	<link rel="icon" href="../../favicon.ico">
	<link rel="canonical" href="https://getbootstrap.com/docs/3.3/examples/carousel/">

	<title>Carousel Template for Bootstrap</title>

	<!-- Bootstrap core CSS -->
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.bundle.min.js"></script>

	<!-- Just for debugging purposes. Don't actually copy these 2 lines! -->
	<!--[if lt IE 9]><script src="../../assets/js/ie8-responsive-file-warning.js"></script><![endif]-->
	<script src="../../assets/js/ie-emulation-modes-warning.js"></script>

	<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
	<!--[if lt IE 9]>
	<script src="https://cdn.jsdelivr.net/npm/html5shiv@3.7.3/dist/html5shiv.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/respond.js/1.4.2/respond.min.js"></script>
	<![endif]-->

	<!-- Custom styles for this template -->
	<link href="carousel.css" rel="stylesheet">
</head>
<script type="text/javascript">

	function fncGetUserList(currentPage) {
		// document.getElementById("currentPage").value = currentPage;
		$("#currentPage").val(currentPage)
		// document.detailForm.submit();
		$('form[name = manageList]').attr("method","POST").attr("action","/product/listProduct/manage").submit();
		$('form[name = searchList]').attr("method","POST").attr("action","/product/listProduct/search").submit();
		// $("form").attr("method" , "POST").attr("action" , "/product/listProduct/{menu}").submit();
	}

	$(function () {
		$("td.ct_btn01:contains('�˻�')").on("click", function () {
			//Debug..
			//alert(  $( "td.ct_btn01:contains('�˻�')" ).html() );
			fncGetUserList(1);
		});

		$(".ct_list_pop").each(function() {
			$(this).find("td:nth-child(3)").on("click", function() {
				var prodNo = $(this).data("prodno");
				var form = $('form[name = manageList]');
				form.attr("action", "/product/updateProduct/" + prodNo + "/manage");
				form.submit();
			});
		});

		$(".ct_list_pop").each(function() {
			$(this).find("td:nth-child(3)").on("click", function() {
				var prodNo = $(this).data("prodno");
				var form = $('form[name = searchList]');
				form.attr("action", "/product/getProduct/" + prodNo + "/search");
				form.submit();
			});
		});
	});

</script>
<style>
	.img-circle{
		background-color : grey;
	}
	.img-circle {
		border-radius: 80%;
	}
</style>
</head>

<body bgcolor="#ffffff" text="#000000">

	<div style="width: 98%; margin-left: 10px;">

			<c:if test="${ menu =='manage' }">
		<form name="manageList">

			<table width="100%" height="37" border="0" cellpadding="0"
				cellspacing="0">
				<tr>
					<td width="15" height="37"><img src="/images/ct_ttl_img01.gif"
						width="15" height="37" /></td>
					<td background="/images/ct_ttl_img02.gif" width="100%"
						style="padding-left: 10px;">
						<table width="100%" border="0" cellspacing="0" cellpadding="0">
							<tr>
								<td width="93%" class="ct_ttl01">��ǰ ����</td>
							</tr>
						</table>
					</td>
					<td width="12" height="37"><img src="/images/ct_ttl_img03.gif"
						width="12" height="37" /></td>
				</tr>
			</table>


			<table width="100%" border="0" cellspacing="0" cellpadding="0"
				style="margin-top: 10px;">
				<tr>
					
					<td align="right"><select name="searchCondition"
						class="ct_input_g" style="width: 80px">
							<option value="1" ${ ! empty search.searchCondition && search.searchCondition==1 ? "selected" : "" } >��ǰ��</option>
					</select> <input type="text" name="searchKeyword" value="${ search.searchKeyword }" class="ct_input_g"
						style="width: 200px; height: 19px" /></td>
							
					<td align="right" width="70">
						<table border="0" cellspacing="0" cellpadding="0">
							<tr>
								<td width="17" height="23"><img
									src="/images/ct_btnbg01.gif" width="17" height="23"></td>
								<td background="/images/ct_btnbg02.gif" class="ct_btn01"
									style="padding-top: 3px;">
									<!--<a href="javascript:fncGetProductList('1');">�˻�</a>-->
									�˻�
								</td>
								<td width="14" height="23"><img
									src="/images/ct_btnbg03.gif" width="14" height="23"></td>
							</tr>
						</table>
					</td>
				</tr>
			</table>


			<table width="100%" border="0" cellspacing="0" cellpadding="0"
				style="margin-top: 10px;">
				<tr>
					<td colspan="11">��ü ${ resultPage.totalCount } �Ǽ�, ���� ${ resultPage.currentPage } ������
					</td>
				</tr>
				<tr>
					<td class="ct_list_b" width="100">No</td>
					<td class="ct_line02"></td>
					<td class="ct_list_b" width="150">��ǰ��</td>
					<td class="ct_line02"></td>
					<td class="ct_list_b" width="150">����</td>
					<td class="ct_line02"></td>
					<td class="ct_list_b">�����</td>
					<td class="ct_line02"></td>
					<td class="ct_list_b">�������</td>
				</tr>
				<tr>
					<td colspan="11" bgcolor="808285" height="1"></td>
				</tr>
				
				<c:set var="i" value="0"/>
				<c:forEach var="prod" items="${list}">
					<c:set var='i' value="${i+1}"/> 
				<tr class="ct_list_pop">
					<td align="center">${ i }</td>
					<td></td>

					<td align="left" data-prodno="${prod.prodNo}">
<%--					<a href="/product/updateProduct/${ prod.prodNo }/${ menu }">${ prod.prodName }</a>--%>
						${prod.prodName}
					</td>

					<td></td>
					<td align="left">${ prod.price }</td>
					<td></td>
					<td align="left">${ prod.manuDate }</td>
					<td></td>
					<td align="left"><c:if test="${ ! empty prod.proTranCode }">
									 <c:if test="${ fn:trim(prod.proTranCode)==1}">
									 	���ſϷ� <a href="/purchase/updateTranCode?prodNo=${ prod.prodNo }&tranCode=2">����ϱ�</a>
									 </c:if>
									 <c:if test="${ fn:trim(prod.proTranCode)==2}">
									 	�����
									 </c:if>
									 <c:if test="${ fn:trim(prod.proTranCode)==3}">
									 	��ۿϷ�
									 </c:if>
									 </c:if>
									 <c:if test="${ empty prod.proTranCode }">
									 	�Ǹ���
									 </c:if>
					</td>
				</tr>
				<tr>
					<td colspan="11" bgcolor="D6D7D6" height="1"></td>
				</tr>
				</c:forEach>
			</table>

			<table width="100%" border="0" cellspacing="0" cellpadding="0"
				style="margin-top: 10px;">
				<tr>
					<td align="center">
						<input type= "hidden" id = "currentPage" name="currentPage" value = ""/>
					
					<jsp:include page="../common/pageNavigator.jsp"/>
					
					</td>
				</tr>
			</table>
			<!--  ������ Navigator �� -->

		</form>
		
		</c:if>
		<c:if test="${ menu=='search'}">
		<form name="searchList"  data-prodno="${prod.prodNo}">

			<table width="100%" height="37" border="0" cellpadding="0"
				cellspacing="0">
				<tr>
					<td width="15" height="37"><img src="/images/ct_ttl_img01.gif"
						width="15" height="37" /></td>
					<td background="/images/ct_ttl_img02.gif" width="100%"
						style="padding-left: 10px;">
						<table width="100%" border="0" cellspacing="0" cellpadding="0">
							<tr>
								<td width="93%" class="ct_ttl01">��ǰ �����ȸ</td>
							</tr>
						</table>
					</td>
					<td width="12" height="37"><img src="/images/ct_ttl_img03.gif"
						width="12" height="37" /></td>
				</tr>
			</table>


			<table width="100%" border="0" cellspacing="0" cellpadding="0"
				style="margin-top: 10px;">
				<tr>
					<td align="right"><select name="searchCondition"
						class="ct_input_g" style="width: 80px">
							<option value="1" ${ !empty search.searchCondition && search.searchCondition == 1 ? "selected" : "" } >��ǰ��</option>
					</select> <input type="text" name="searchKeyword" value="${ search.searchKeyword }" class="ct_input_g"
						style="width: 200px; height: 19px" /></td>
					<td align="right" width="70">
						<table border="0" cellspacing="0" cellpadding="0">
							<tr>
								<td width="17" height="23"><img
									src="/images/ct_btnbg01.gif" width="17" height="23"></td>
								<td background="/images/ct_btnbg02.gif" class="ct_btn01"
									style="padding-top: 3px;">
									<!--<a href="javascript:fncGetUserList('1');">�˻�</a>-->
									�˻�
								</td>
								<td width="14" height="23"><img
									src="/images/ct_btnbg03.gif" width="14" height="23"></td>
							</tr>
						</table>
					</td>
				</tr>
			</table>


			<table width="100%" border="0" cellspacing="0" cellpadding="0"
				style="margin-top: 10px;">
				<tr>
					<td colspan="11">��ü ${ resultPage.totalCount } �Ǽ�, ���� ${ resultPage.currentPage } ������
					</td>
				</tr>
				<tr>
					<td class="ct_list_b" width="100">No</td>
					<td class="ct_line02"></td>
					<td class="ct_list_b" width="150">��ǰ��</td>
					<td class="ct_line02"></td>
					<td class="ct_list_b" width="150">����</td>
					<td class="ct_line02"></td>
					<td class="ct_list_b">�����</td>
					<td class="ct_line02"></td>
					<td class="ct_list_b">��ǰ �̹���</td>
					<td class="ct_line02"></td>
					<td class="ct_list_b">�������</td>
				</tr>
				<tr>
					<td colspan="11" bgcolor="808285" height="1"></td>
				</tr>
				<c:set var="i" value="0" />
				<c:forEach var="prod" items="${list}">
				<c:set var="i" value="${ i+1 }" />
				<div class="container marketing">
				<tr class="ct_list_pop">
					<td align="center">${ i }</td>
					<td></td>

					<td align="left" data-prodno="${prod.prodNo}">
<%--						<a href="/product/getProduct/${ prod.prodNo }/${ menu }">${ prod.prodName }</a>--%>
						${prod.prodName}
					</td>

					<td></td>
					<td align="left">${ prod.price }</td>
					<td></td>
					<td align="left">${ prod.manuDate }</td>
					<td></td>
					<td align="center"><img class="img-circle" src="/images/uploadFiles/${prod.fileName }" alt="Generic placeholder image" width="140" height="140"></td>
					<td></td>
					<td align="left"><c:if test="${ !empty prod.proTranCode }">
									 <c:if test="${ fn:trim(prod.proTranCode)==3 }">
											������
									</c:if>
									 <c:if test="${ fn:trim(prod.proTranCode) !=3 }">
										������
									</c:if>
									</c:if>
									<c:if test="${ empty prod.proTranCode }">
										�Ǹ���
									</c:if>
					</td>
				</tr>
				<td colspan="11" bgcolor="D6D7D6" height="1"></td>
				</tr>
				</div>
				</c:forEach>
			</table>

			<table width="100%" border="0" cellspacing="0" cellpadding="0"
				style="margin-top: 10px;">
				<tr>
					<td align="center">
						<input type="hidden" id="currentPage" name="currentPage" value=""/>
						<jsp:include page="../common/pageNavigator.jsp" />
						
					</td>
				</tr>
			</table>
			<!--  ������ Navigator �� -->
			</c:if>
		</form>
	</div>

</body>
</html>
