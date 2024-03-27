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

<script type="text/javascript">

	$(document).ready(function() {
		$("#brandLink").on("click", function(event) {
			event.preventDefault();
			self.location.href = "#";
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

		$(".dropdown-item").on("click", function(event) {
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
</script>
<style>
	.navbar {
		position: fixed; /* 상단에 고정 */
		top: 0; /* 상단 여백 없애기 */
		width: 100%; /* 전체 너비로 설정 */
		z-index: 1000; /* 다른 요소 위에 배치 */
		padding-top: 0; /* 상단 여백 제거 */
	}

	.navbar-nav {
		display: flex !important;
		flex-direction: row !important;
		justify-content: flex-end !important; /* 우측 정렬만 여기서 설정 */
	}

	.navbar-nav .nav-link {
		font-size: 16px;
	}

	.navbar-brand {
		font-size: 18px;
	}
</style>
<nav class="navbar navbar-expand-lg bg-primary navbar-inverse fixed-top" data-bs-theme="dark">
	<a class="navbar-brand" href="#" style="color: whitesmoke" id="brandLink">Model2 MVC Shop</a>
	<button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarColor01" aria-controls="navbarColor01" aria-expanded="false" aria-label="Toggle navigation">
		<span class="navbar-toggler-icon"></span>
	</button>
	<div class="navbar-collapse collapse show" id="navbarColor01" style="">
		<ul class="navbar-nav me-auto" style="justify-content: flex-end;">
			<li class="nav-item dropdown">
				<a class="nav-link dropdown-toggle show" data-toggle="dropdown" href="#" role="button" aria-haspopup="true" aria-expanded="true">
					Membership management</a>
				<div class="dropdown-menu">
					<a class="dropdown-item" href="javascript:void(0);" id="getUserLink">개인정보조회</a>
					<c:if test="${user.role == 'admin'}">
						<a class="dropdown-item" href="#">회원정보 조회</a>
					</c:if>
					<div class="dropdown-divider"></div>
					<a class="dropdown-item" href="#">etc...</a>
				</div>
			</li>
			<c:if test="${user.role == 'admin'}">
				<li class="nav-item dropdown">
					<a class="nav-link dropdown-toggle show" data-toggle="dropdown" href="#" role="button" aria-haspopup="true" aria-expanded="true">product management</a>
					<div class="dropdown-menu">
						<a class="dropdown-item" href="#">판매상품 등록</a>
						<a class="dropdown-item" href="#">판매상품 관리</a>
						<div class="dropdown-divider"></div>
						<a class="dropdown-item" href="#">etc...</a>
					</div>
				</li>
			</c:if>
			<li class="nav-item dropdown">
				<a class="nav-link dropdown-toggle show" data-toggle="dropdown" href="#" role="button" aria-haspopup="true" aria-expanded="true">Product purchase</a>
				<div class="dropdown-menu">
					<a class="dropdown-item" href="#">상품검색</a>
					<a class="dropdown-item" href="#">구매이력조회</a>
					<a class="dropdown-item" href="#">최근본상품</a>
					<div class="dropdown-divider"></div>
					<a class="dropdown-item" href="#">etc...</a>
				</div>
			</li>
			<form class="d-flex ms-auto">
				<button class="btn btn-secondary my-2 my-sm-0" type="submit" id="Logout">Log out</button>
			</form>
		</ul>
	</div>
</nav>