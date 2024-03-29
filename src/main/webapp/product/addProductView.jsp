<%@ page contentType="text/html; charset=euc-kr" %>

<html>
<head>
	<title>��ǰ���</title>

	<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
	<script src="https://code.jquery.com/ui/1.13.2/jquery-ui.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx" crossorigin="anonymous"></script>
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootswatch@4.5.2/dist/sketchy/bootstrap.min.css" integrity="sha384-RxqHG2ilm4r6aFRpGmBbGTjsqwfqHOKy1ArsMhHusnRO47jcGqpIQqlQK/kmGy9R" crossorigin="anonymous">
	<link rel="stylesheet" href="https://code.jquery.com/ui/1.13.2/themes/smoothness/jquery-ui.css">


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
			<h3 class=" text-info">��ǰ��������</h3>
			<h5 class="text-muted">��ǰ ������ <strong class="text-danger">�ֽ������� ����</strong>�� �ּ���.</h5>
		</div>

		<!-- form Start /////////////////////////////////////-->
		<form class="form-horizontal">

			<div class="form-group text-center">
				<label for="prodName" class="col-sm-offset-1 col-sm-3 control-label">��ǰ��</label>
				<div class="col-sm-4" style="display: block; margin-left: auto; margin-right: auto;">
					<input type="text" id = "prodName" class="form-control" placeholder="��ǰ��">
				</div>
			</div>

			<div class="form-group">
				<label for="prodDetail" class="col-sm-offset-1 col-sm-3 control-label">��ǰ ������</label>
				<div class="col-sm-4" style="display: block; margin-left: auto; margin-right: auto;">
					<input type="text" class="form-control" id="prodDetail" name="password" placeholder="��ǰ ������">
				</div>
			</div>
			<div class="form-group">
				<label for="manuDate" class="col-sm-offset-1 col-sm-3 control-label">��������</label>
				<div class="col-sm-4" style="display: block; margin-left: auto; margin-right: auto;">
					<input type="text" class="form-control" id="manuDate" name="userName"placeholder="�������� �����ؾߵ�">
				</div>
			</div>

			<div class="form-group">
				<label for="price" class="col-sm-offset-1 col-sm-3 control-label">�ּ�</label>
				<div class="col-sm-4" style="display: block; margin-left: auto; margin-right: auto;">
					<input type="text" class="form-control" id="price" name="addr" placeholder="����">
				</div>
			</div>

			<div class="form-group">
				<label for="fileName" class="col-sm-offset-1 col-sm-3 control-label">��ǰ �̹���</label>
				<div class="col-sm-4" style="display: block; margin-left: auto; margin-right: auto;">
					<select class="form-control" name="phone1" id="fileName">
						<input type = "file" name = "uploadFile" class ="form-control" style = "width:300px; height: 30px" maxlength="13"/>
					</select>
			</div>

			<div class="form-group">
				<div class="col-sm-4" style="display: block; margin-left: auto; margin-right: auto;">
					<button type="button" class="btn btn-primary"  >�� &nbsp;��</button>
					<button type="button" class = "btn btn-primary">�� &nbsp;��</button>
				</div>
			</div>
			</div>
		</form>
	</div>
		<!-- form Start /////////////////////////////////////-->

</form>
</body>
</html>
	<!--  ȭ�鱸�� div Start /////////////////////////////////////-->