<%@ page contentType="text/html; charset=EUC-KR" %>
<%@ page pageEncoding="EUC-KR"%>

<!--  ///////////////////////// JSTL  ////////////////////////// -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!-- jQuery -->
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<!-- Bootstrap CSS -->
<link href="https://cdn.jsdelivr.net/npm/bootswatch@5.3.0/dist/sketchy/bootstrap.min.css" rel="stylesheet">

<!-- Bootstrap 5 JS bundle (includes Popper.js) -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>

<nav class="navbar navbar-expand-lg bg-primary navbar-inverse fixed-top" data-bs-theme="dark">
	<div class = "container-fluid">
	<a class="navbar-brand" href="#" style="color: whitesmoke" id="brandLink">Model2 MVC Shop</a>
	<button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarColor01" aria-controls="navbarColor01" aria-expanded="false" aria-label="Toggle navigation">
		<span class="navbar-toggler-icon"></span>
	</button>
	<div class="navbar-collapse collapse show" id="navbarColor01" style="">
		<ul class="navbar-nav me-auto">
			<li class="nav-item dropdown">
				<a class="nav-link dropdown-toggle show" data-toggle="dropdown" href="#" role="button" aria-haspopup="true" aria-expanded="true">
					Membership management</a>
				<div class="dropdown-menu">
					<a class="dropdown-item" href="javascript:void(0);" id="getUserLink">����������ȸ</a>
					<c:if test="${user.role == 'admin'}">
						<a class="dropdown-item" href="javascript:void(0);">ȸ��������ȸ</a>
					</c:if>
					<div class="dropdown-divider"></div>
					<a class="dropdown-item" href="#">etc...</a>
				</div>
			</li>
			<c:if test="${user.role == 'admin'}">
				<li class="nav-item dropdown">
					<a class="nav-link dropdown-toggle show" data-toggle="dropdown" href="#" role="button" aria-haspopup="true" aria-expanded="true">product management</a>
					<div class="dropdown-menu">
						<a class="dropdown-item" href="javascript:void(0);">�ǸŻ�ǰ���</a>
						<a class="dropdown-item" href="javascript:void(0);">�ǸŻ�ǰ����</a>
						<div class="dropdown-divider"></div>
						<a class="dropdown-item" href="#">etc...</a>
					</div>
				</li>
			</c:if>
			<li class="nav-item dropdown">
				<a class="nav-link dropdown-toggle show" data-toggle="dropdown" href="#" role="button" aria-haspopup="true" aria-expanded="true">Product purchase</a>
				<div class="dropdown-menu">
					<a class="dropdown-item" href="javascript:void(0);">��ǰ�˻�</a>
					<a class="dropdown-item" href="javascript:void(0);">�����̷���ȸ</a>
					<a class="dropdown-item" href="javascript:void(0);">�ֱٺ���ǰ</a>
					<div class="dropdown-divider"></div>
					<a class="dropdown-item" href="#">etc...</a>
				</div>
			</li>
			<form class="d-flex ml-auto" style="justify-content: flex-end !important;">
				<button class="btn btn-secondary me-sm-2" type="submit" id="Logout">Log out</button>
			</form>
		</ul>
	</div>
	</div>
</nav>

<script type="text/javascript">

	$(document).ready(function() {
		$("#brandLink").on("click", function(event) {
			self.location.href = "/main.jsp";
		});

		$("#getUserLink").on("click", function(event) {
			event.preventDefault();
			var userId = "${sessionScope.user.userId}";
			self.location.href = "/user/getUser?userId=" + userId;
		});

		$("#Logout").on("click", function(event) {
			event.preventDefault();
			$(self.location).attr("href", "/user/logout");
		});

		$(document).ready(function() {
			$(".dropdown-item").on("click", function (event) {
				event.preventDefault();
				var href = $(this).attr("href");

				if (href === "#") {
					// Handle dropdown toggle
					$(this).dropdown("toggle");
				} else {
					// Redirect to the specified link
					self.location.href = href;
				}
			});
		});

		$(function() {
			//==> DOM Object GET 3���� ��� ==> 1. $(tagName) : 2.(#id) : 3.$(.className)
			$("a:contains('ȸ��������ȸ')").on("click" , function() {
				//$(self.location).attr("href","/user/logout");
				self.location = "/user/listUser"
			});
		});

		$(function() {
			//==> DOM Object GET 3���� ��� ==> 1. $(tagName) : 2.(#id) : 3.$(.className)
			$("a:contains('�ǸŻ�ǰ���')").on("click" , function() {
				//$(self.location).attr("href","/user/logout");
				self.location = "../product/addProductView.jsp"
			});
		});

		$(function() {
			//==> DOM Object GET 3���� ��� ==> 1. $(tagName) : 2.(#id) : 3.$(.className)
			$("a:contains('�ǸŻ�ǰ����')").on("click" , function() {
				//$(self.location).attr("href","/user/logout");
				self.location = "/product/listProduct/manage"
			});
		});

		$(function() {
			//==> DOM Object GET 3���� ��� ==> 1. $(tagName) : 2.(#id) : 3.$(.className)
			$("a:contains('��ǰ�˻�')").on("click" , function() {
				//$(self.location).attr("href","/user/logout");
				self.location = "/product/listProduct/search"
			});
		});

		$(function() {
			//==> DOM Object GET 3���� ��� ==> 1. $(tagName) : 2.(#id) : 3.$(.className)
			$("a:contains('�����̷���ȸ')").on("click" , function() {
				//$(self.location).attr("href","/user/logout");
				self.location = "/purchase/listPurchase"
			});
		});

		$(function() {
			//==> DOM Object GET 3���� ��� ==> 1. $(tagName) : 2.(#id) : 3.$(.className)
			$("a:contains('�ֱٺ���ǰ')").on("click" , function() {
				//$(self.location).attr("href","/user/logout");
				window.open("/history.jsp", "_blank");
			});
		});
	});
</script>
<style>


	.navbar-nav .nav-link {
		font-size: 16px;
	}

	.navbar-brand {
		font-size: 18px;
	}
</style>