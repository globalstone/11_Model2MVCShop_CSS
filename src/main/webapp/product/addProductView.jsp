<%@ page contentType="text/html; charset=euc-kr" %>

<html>
<head>
	<title>상품등록</title>

	<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
	<script src="https://code.jquery.com/ui/1.13.2/jquery-ui.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx" crossorigin="anonymous"></script>
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootswatch@4.5.2/dist/sketchy/bootstrap.min.css" integrity="sha384-RxqHG2ilm4r6aFRpGmBbGTjsqwfqHOKy1ArsMhHusnRO47jcGqpIQqlQK/kmGy9R" crossorigin="anonymous">
	<link rel="stylesheet" href="https://code.jquery.com/ui/1.13.2/themes/smoothness/jquery-ui.css">


	<script type="text/javascript">

		function fncAddProduct(){
			//Form 유효성 검증
			var name = document.detailForm.prodName.value;
			var detail = document.detailForm.prodDetail.value;
			var manuDate = document.detailForm.manuDate.value;
			var price = document.detailForm.price.value;

			if(name == null || name.length<1){
				alert("상품명은 반드시 입력하여야 합니다.");
				return;
			}
			if(detail == null || detail.length<1){
				alert("상품상세정보는 반드시 입력하여야 합니다.");
				return;
			}
			if(manuDate == null || manuDate.length<1){
				alert("제조일자는 반드시 입력하셔야 합니다.");
				return;
			}
			if(price == null || price.length<1){
				alert("가격은 반드시 입력하셔야 합니다.");
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
		body {
			padding-top: 90px;
		}

		#center-test{
			text-align: center;
		}
		.form-group{
			text-align: center;
		}
		button{
			text-align: center;
		}
	</style>
	</script>
</head>

<body bgcolor="#ffffff" text="#000000">
<jsp:include page="/layout/toolbar.jsp" />
<form name="detailForm" method="post" enctype="multipart/form-data">
	<div class="container" id = "center-test">

		<div class="page-header text-center">
			<h3 class=" text-info">상품정보수정</h3>
			<h5 class="text-muted">상품 정보를 <strong class="text-danger">최신정보로 관리</strong>해 주세요.</h5>
		</div>

		<!-- form Start /////////////////////////////////////-->
		<form class="form-horizontal">

			<div class="form-group text-center">
				<label for="prodName" class="col-sm-offset-1 col-sm-3 control-label">상품명</label>
				<div class="col-sm-4" style="display: block; margin-left: auto; margin-right: auto;">
					<input type="text" id = "prodName" class="form-control" placeholder="상품명">
				</div>
			</div>

			<div class="form-group">
				<label for="prodDetail" class="col-sm-offset-1 col-sm-3 control-label">상품 상세정보</label>
				<div class="col-sm-4" style="display: block; margin-left: auto; margin-right: auto;">
					<input type="text" class="form-control" id="prodDetail" name="password" placeholder="상품 상세정보">
				</div>
			</div>
			<div class="form-group">
				<label for="manuDate" class="col-sm-offset-1 col-sm-3 control-label">제조일자</label>
				<div class="col-sm-4" style="display: block; margin-left: auto; margin-right: auto;">
					<input type="text" class="form-control" id="manuDate" name="userName"placeholder="제조일자 수정해야됨">
				</div>
			</div>

			<div class="form-group">
				<label for="price" class="col-sm-offset-1 col-sm-3 control-label">주소</label>
				<div class="col-sm-4" style="display: block; margin-left: auto; margin-right: auto;">
					<input type="text" class="form-control" id="price" name="addr" placeholder="가격">
				</div>
			</div>

			<div class="form-group">
				<label for="fileName" class="col-sm-offset-1 col-sm-3 control-label">상품 이미지</label>
				<div class="col-sm-4" style="display: block; margin-left: auto; margin-right: auto;">
					<select class="form-control" name="phone1" id="fileName">
						<input type = "file" name = "uploadFile" class ="form-control" style = "width:300px; height: 30px" maxlength="13"/>
					</select>
			</div>

			<div class="form-group">
				<div class="col-sm-4" style="display: block; margin-left: auto; margin-right: auto;">
					<button type="button" class="btn btn-primary"  >수 &nbsp;정</button>
					<button type="button" class = "btn btn-primary">취 &nbsp;소</button>
				</div>
			</div>
			</div>
		</form>
	</div>
		<!-- form Start /////////////////////////////////////-->

</form>
</body>
</html>
	<!--  화면구성 div Start /////////////////////////////////////-->