<%@ page contentType="text/html; charset=EUC-KR" %>
<%@ page pageEncoding="EUC-KR"%>

<!--  ///////////////////////// JSTL  ////////////////////////// -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- Bootstrap CSS -->
<link href="https://cdn.jsdelivr.net/npm/bootswatch@5.3.0/dist/sketchy/bootstrap.min.css" rel="stylesheet">

<!-- Bootstrap 5 JS bundle (includes Popper.js) -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>

<!-- jQuery -->
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script type="text/javascript">

	//============= logout Event  처리 =============
	$(function() {
		//==> DOM Object GET 3가지 방법 ==> 1. $(tagName) : 2.(#id) : 3.$(.className)
		$("#Logout").on("click" , function() {
			$(self.location).attr("href","/user/logout");
			//self.location = "/user/logout"
		});
	});

	//============= 회원정보조회 Event  처리 =============
	$(function() {
		//==> DOM Object GET 3가지 방법 ==> 1. $(tagName) : 2.(#id) : 3.$(.className)
		$("a:contains('회원정보조회')").on("click" , function() {
			//$(self.location).attr("href","/user/logout");
			self.location = "/user/listUser"
		});
	});

	//=============  개인정보조회회 Event  처리 =============
	$( "#get" ).on("click" , function(event) {
		//==> DOM Object GET 3가지 방법 ==> 1. $(tagName) : 2.(#id) : 3.$(.className)
		event.preventDefault();
		$(self.location).attr("href","/user/getUser?userId=${sessionScope.user.userId}");
	});

	$(document).ready(function() {
		$(".navbar-nav").css("justify-content", "flex-end"); // navbar-nav의 자식 요소를 우측 정렬
	});
</script>
<style>
	.navbar-nav {
		display: flex !important; /* flexbox로 변경 */
		flex-direction: row !important; /* Navbar의 flex 방향을 row로 변경 */
	}

	.navbar-nav .nav-link {
		font-size: 16px; /* 원하는 크기로 조절하세요 */
	}

	.navbar-brand {
		font-size: 18px;  /* 원하는 크기로 조절하세요 */
	}
</style>
<nav class="navbar navbar-expand-lg bg-primary navbar-inverse navbar-fixed-top" data-bs-theme="dark">
	<a class="navbar-brand" href="#" style="color: whitesmoke">Model2 MVC Shop</a>
	<button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarColor01" aria-controls="navbarColor01" aria-expanded="false" aria-label="Toggle navigation">
		<span class="navbar-toggler-icon"></span>
	</button>
	<div class="navbar-collapse collapse show" id="navbarColor01" style="">
		<ul class="navbar-nav me-auto" style="justify-content: flex-end;">
			<li class="nav-item dropdown">
				<a class="nav-link dropdown-toggle show" data-toggle="dropdown" href="#" role="button" aria-haspopup="true" aria-expanded="true">
					Membership management</a>
				<div class="dropdown-menu">
					<a class="dropdown-item" href="user/getUser?userId="+${user.userId} id = "get">개인정보조회</a>
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