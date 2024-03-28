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
<title>상품 목록조회</title>

	<!-- jQuery -->
<%--	<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>--%>

<%--	<link rel="stylesheet" href="/css/admin.css" type="text/css">--%>
<%--	<meta charset="utf-8">--%>
<%--	<meta http-equiv="X-UA-Compatible" content="IE=edge">--%>
<%--	<meta name="viewport" content="width=device-width, initial-scale=1">--%>
<%--	<!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->--%>
<%--	<meta name="description" content="">--%>
<%--	<meta name="author" content="">--%>
<%--	<link rel="icon" href="../../favicon.ico">--%>
<%--	<link rel="canonical" href="https://getbootstrap.com/docs/3.3/examples/carousel/">--%>
	<meta name="viewport" content="width=device-width, initial-scale=1.0" />
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootswatch@4.5.2/dist/sketchy/bootstrap.min.css" integrity="sha384-RxqHG2ilm4r6aFRpGmBbGTjsqwfqHOKy1ArsMhHusnRO47jcGqpIQqlQK/kmGy9R" crossorigin="anonymous">

	<!-- 테마 -->
	<%--    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">--%>

	<%--    <!-- 자바스크립트 -->--%>
	<%--    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>--%>
	<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx" crossorigin="anonymous"></script>


<%--	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" >--%>
<%--	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" >--%>
<%--	<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>--%>
<%--	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" ></script>--%>
<%--	<link href="https://cdn.jsdelivr.net/npm/bootswatch@5.3.0/dist/sketchy/bootstrap.min.css" rel="stylesheet">--%>

<%--	<!-- Bootstrap 5 JS bundle (includes Popper.js) -->--%>
<%--	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>--%>

<%--	<!-- Bootstrap Dropdown Hover CSS -->--%>
<%--	<link href="/css/animate.min.css" rel="stylesheet">--%>
<%--	<link href="/css/bootstrap-dropdownhover.min.css" rel="stylesheet">--%>

<%--	<!-- Bootstrap Dropdown Hover JS -->--%>
<%--	<script src="/javascript/bootstrap-dropdownhover.min.js"></script>--%>


	<title>Carousel Template for Bootstrap</title>

	<!-- Bootstrap core CSS -->
<%--	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">--%>
<%--	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.bundle.min.js"></script>--%>

<%--	<!-- Just for debugging purposes. Don't actually copy these 2 lines! -->--%>
<%--	<!--[if lt IE 9]><script src="../../assets/js/ie8-responsive-file-warning.js"></script><![endif]-->--%>
<%--	<script src="../../assets/js/ie-emulation-modes-warning.js"></script>--%>

<%--	<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->--%>
<%--	<!--[if lt IE 9]>--%>
<%--	<script src="https://cdn.jsdelivr.net/npm/html5shiv@3.7.3/dist/html5shiv.min.js"></script>--%>
<%--	<script src="https://cdnjs.cloudflare.com/ajax/libs/respond.js/1.4.2/respond.min.js"></script>--%>
	<![endif]-->

<%--	<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>--%>
<%--	<!-- Bootstrap CSS -->--%>
<%--	<link href="https://cdn.jsdelivr.net/npm/bootswatch@5.3.0/dist/sketchy/bootstrap.min.css" rel="stylesheet">--%>

<%--	<!-- Bootstrap 5 JS bundle (includes Popper.js) -->--%>
<%--	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>--%>

<%--	<!-- Custom styles for this template -->--%>
<%--	<link href="carousel.css" rel="stylesheet">--%>
</head>
<script type="text/javascript">
	$(document).ready(function() {

		var isLoading = false;
		var isEndOfData = false;
		var currentPage = 2;  // 현재 페이지를 2로 설정
		var pageSize = 8;
		var dallor = 36;

		function loadMoreProducts() {
			if (!isLoading && !isEndOfData) {
				isLoading = true;

				$.ajax({
					url: "/product/json/listProduct/search",
					method: "GET",
					data: {
						currentPage: currentPage,
						pageSize: pageSize
					},
					dataType: "json",
					success: function(data) {
						var prod = data.productList;
						if (prod.length === 0) {
							isEndOfData = true;
							return;
						}
						for (var i = 0; i < prod.length; i++) {
							var product = prod[i];
							var row = '<div class = "col-md-4">' +
									  '<div class = "card mb-3">' +
									  '<h3 class = "card-header">' + ((currentPage - 1) * pageSize + i + 1) + '</h3>' +
									  '<div class = "card-body">' +
									  '<h5 class ="card-title">' + product.prodName + '</h5>' +
									  '</div>' +
									  '<img src = "/images/uploadFiles/' + product.fileName + '" alt = "Product Image" width="100%" height="200">' +
									  '<div class = "card-body">' +
									  '<p class = "card-text">' + product.prodDetail + '</p>' +
									  '</div>' +
									  '<ul class = "input-group-text">' +
									  '<span class ="input-group-text">' + String.fromCharCode(dallor) + '</span>' +
									  '<input class = "form-control" id = "readOnlyInput" type="text" placeholder="' + product.price + '" readonly="">' +
									  '</ul>' +
									  '<div class = "card-body">' +
									  '<a href = "/purchase/addPurchase/' + product.prodNo + '" class = "card-link"> Buy </a>' +
									  '<a href = "#" class = "card-link"> Wish </a>' +
									  '</div>' +
									  '<div class = "card-footer text-muted">' +
									   product.regDate +
									  '</div>' +
									  '</div>' +
									  '</div>';
							$('.row').append(row);
						}
						isLoading = false;
						currentPage++;
					},
					error: function() {
						isLoading = false;
					}
				});
			}
		}

		loadMoreProducts();  // 초기에 한 번 데이터 로드

		$(window).scroll(function() {
			var $window = $(this);
			var scrollTop = $window.scrollTop(); // 스크롤바 위치
			var windowHeight = $window.height(); //window의 높이
			var documentHeight = $(document).height(); //전체 높이
			console.log("scroll")

			if (scrollTop + windowHeight >= documentHeight - 100) {
				loadMoreProducts();
			}
		});
	});
</script>
<style>
	body {
		padding-top: 70px;
	}
</style>
</head>

<body bgcolor="#ffffff" text="#000000">
<jsp:include page="/layout/toolbar.jsp" />
	<div class="container">
		<div class="row">
			<c:set var="i" value="0"/>
			<c:forEach var="prod" items="${list}">
				<c:set var='i' value="${i+1}"/>
				<div class="col-md-4">
					<div class="card mb-3">
						<h3 class="card-header">${i}</h3>
						<div class="card-body">
							<h5 class="card-title">${prod.prodName}</h5>
						</div>
						<img src="/images/uploadFiles/${prod.fileName}" alt="Product Image" width="100%" height="200">
						<div class="card-body">
							<p class="card-text">${prod.prodDetail}</p>
						</div>
						<ul class="input-group-text">
							<span class="input-group-text">$</span>
							<input class="form-control" id="readOnlyInput" type="text" placeholder=${prod.price} readonly="">
						</ul>
						<div class="card-body">
							<a href="/product/buy/${prod.prodNo}" class="card-link">Buy</a>
							<a href="/product/wishlist/${prod.prodNo}" class="card-link">Whish</a>
						</div>
						<div class="card-footer text-muted">
								${prod.regDate}
						</div>
					</div>
				</div>
			</c:forEach>
		</div>
	</div>
</body>
</html>
