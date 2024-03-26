<%@ page contentType="text/html; charset=EUC-KR" %>
<%@ page pageEncoding="EUC-KR"%>


<!DOCTYPE html>

<html lang="ko">
	
<head>
	<meta charset="EUC-KR">
	
	<!-- ���� : http://getbootstrap.com/css/   ���� -->
	<meta name="viewport" content="width=device-width, initial-scale=1.0" />
	
	<!--  ///////////////////////// Bootstrap, jQuery CDN ////////////////////////// -->
	<link href="https://cdn.jsdelivr.net/npm/bootswatch@5.3.0/dist/sketchy/bootstrap.min.css" rel="stylesheet">

	<!-- Bootstrap 5 JS bundle (includes Popper.js) -->
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>

	<!-- jQuery -->
	<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
	<!--  ///////////////////////// CSS ////////////////////////// -->
	<style>
 		body {
            padding-top : 50px;
        }
     </style>
    
     <!--  ///////////////////////// JavaScript ////////////////////////// -->
	<script type="text/javascript">
		
		//============= ȸ���������� Event  ó�� =============	
		 $(function() {
			//==> DOM Object GET 3���� ��� ==> 1. $(tagName) : 2.(#id) : 3.$(.className)
			 $( "button" ).on("click" , function() {
					self.location = "/user/updateUser?userId=${user.userId}"
				});
		});
		
	</script>
	
</head>

<body>
	<jsp:include page="/layout/toolbar.jsp" />
	<!--  ȭ�鱸�� div Start /////////////////////////////////////-->
<%--	<div class="container">--%>

<%--		<div class="page-header">--%>
<%--	       <h3 class=" text-info">ȸ��������ȸ</h3>--%>
<%--	       <h5 class="text-muted">�� ������ <strong class="text-danger">�ֽ������� ����</strong>�� �ּ���.</h5>--%>
<%--	    </div>--%>

<%--		<div class="row">--%>
<%--	  		<div class="col-xs-4 col-md-2"><strong>�� �� ��</strong></div>--%>
<%--			<div class="col-xs-8 col-md-4">${user.userId}</div>--%>
<%--		</div>--%>

<%--		<hr/>--%>

<%--		<div class="row">--%>
<%--	  		<div class="col-xs-4 col-md-2 "><strong>�� ��</strong></div>--%>
<%--			<div class="col-xs-8 col-md-4">${user.userName}</div>--%>
<%--		</div>--%>

<%--		<hr/>--%>

<%--		<div class="row">--%>
<%--	  		<div class="col-xs-4 col-md-2 "><strong>�ּ�</strong></div>--%>
<%--			<div class="col-xs-8 col-md-4">${user.addr}</div>--%>
<%--		</div>--%>

<%--		<hr/>--%>

<%--		<div class="row">--%>
<%--	  		<div class="col-xs-4 col-md-2 "><strong>�޴���ȭ��ȣ</strong></div>--%>
<%--			<div class="col-xs-8 col-md-4">${ !empty user.phone ? user.phone : ''}	</div>--%>
<%--		</div>--%>

<%--		<hr/>--%>

<%--		<div class="row">--%>
<%--	  		<div class="col-xs-4 col-md-2"><strong>�� �� ��</strong></div>--%>
<%--			<div class="col-xs-8 col-md-4">${user.email}</div>--%>
<%--		</div>--%>

<%--		<hr/>--%>

<%--		<div class="row">--%>
<%--	  		<div class="col-xs-4 col-md-2 "><strong>��������</strong></div>--%>
<%--			<div class="col-xs-8 col-md-4">${user.regDate}</div>--%>
<%--		</div>--%>

<%--		<hr/>--%>

<%--		<div class="row">--%>
<%--	  		<div class="col-md-12 text-center ">--%>
<%--	  			<button type="button" class="btn btn-primary">ȸ����������</button>--%>
<%--	  		</div>--%>
<%--		</div>--%>

<%--		<br/>--%>

<%-- 	</div>--%>
<%--	=================--%>

	<div class = "bs-docs-section">
		<div class="row">
			<div class = "col-lg-12">
				<div class = "page-header">
					<h1 id = "navs">Profile</h1>
	<table class="table table-hover">
		<thead>
		<tr>
			<th scope="col">UserID</th>
			<th scope="col">${user.userId}</th>
		</tr>
		</thead>
		<tbody>
			<tr class="table-active">
				<th scope="row">UserName</th>
				<td>${user.userName}</td>
			</tr>
		</tbody>
			<thead>
			<tr>
				<th scope="col">ADDR</th>
				<th scope="col">${user.addr}</th>
			</tr>
			</thead>
		<tbody>
			<tr class="table-active">
				<th scope="row">Phone</th>
				<td>${ !empty user.phone ? user.phone : ''}</td>
			</tr>
		</tbody>
		<thead>
		<tr>
			<th scope="col">email</th>
			<th scope="col">${user.email}</th>
		</tr>
		</thead>
		<tbody>
		<tr class="table-active">
			<th scope="row">RegDate</th>
			<td>${ user.regDate}</td>
		</tr>
		</tbody>
	</table>
 	<!--  ȭ�鱸�� div Start /////////////////////////////////////-->
				</div>
			</div>
		</div>
	</div>
			<div class="row">
		  		<div class="col-md-12 text-center ">
		  			<button type="button" class="btn btn-primary">edit profile</button>
		  		</div>
			</div>
</body>

</html>