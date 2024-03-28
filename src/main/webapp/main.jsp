<%@ page contentType="text/html; charset=EUC-KR" %>
<%@ page pageEncoding="EUC-KR"%>

<!--  ///////////////////////// JSTL  ////////////////////////// -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>

<html lang="ko">
	
<head>
	<meta charset="EUC-KR">
	
	<meta name="viewport" content="width=device-width, initial-scale=1.0" />

	<!--   jQuery , Bootstrap CDN  -->
<%--	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" >--%>
<%--	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" >--%>
	<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
<%--	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" ></script>--%>
<%--    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootswatch@4.5.2/dist/sketchy/bootstrap.min.css" integrity="sha384-RxqHG2ilm4r6aFRpGmBbGTjsqwfqHOKy1ArsMhHusnRO47jcGqpIQqlQK/kmGy9R" crossorigin="anonymous">--%>
<%--    <link href="https://cdn.jsdelivr.net/npm/bootswatch@5.3.0/dist/sketchy/bootstrap.min.css" rel="stylesheet">--%>

<%--    <!-- Bootstrap 5 JS bundle (includes Popper.js) -->--%>
<%--    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>--%>

<%--    <!-- Bootstrap Dropdown Hover CSS -->--%>
<%--   <link href="/css/animate.min.css" rel="stylesheet">--%>
<%--   <link href="/css/bootstrap-dropdownhover.min.css" rel="stylesheet">--%>

    <!-- Bootstrap Dropdown Hover JS -->
<%--   <script src="/javascript/bootstrap-dropdownhover.min.js"></script>--%>

	<!--  CSS 추가 : 툴바에 화면 가리는 현상 해결 :  주석처리 전, 후 확인-->
    <!-- CSS -->
<%--    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">--%>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootswatch@4.5.2/dist/sketchy/bootstrap.min.css" integrity="sha384-RxqHG2ilm4r6aFRpGmBbGTjsqwfqHOKy1ArsMhHusnRO47jcGqpIQqlQK/kmGy9R" crossorigin="anonymous">

    <!-- 테마 -->
<%--    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">--%>

<%--    <!-- 자바스크립트 -->--%>
<%--    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>--%>
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx" crossorigin="anonymous"></script>
    <style>
        body {
            padding-top: 70px;
        }
    </style>
   	
     <!--  ///////////////////////// JavaScript ////////////////////////// -->
	 	
	
</head>
	
<body>
	<jsp:include page="/layout/toolbar.jsp" />
   	<!-- ToolBar End /////////////////////////////////////-->

	<!--  아래의 내용은 http://getbootstrap.com/getting-started/  참조 -->	
   	<div class="container ">
      <!-- Main jumbotron for a primary marketing message or call to action -->
      <div class="jumbotron">
        <h1>Model2MVCShop </h1>
        <p>J2SE , DBMS ,JDBC , Servlet & JSP, Java Framework , HTML5 , UI Framework 학습 후 Mini-Project 진행</p>
     </div>
    </div>

	<!-- 참조 : http://getbootstrap.com/css/   : container part..... -->
	<div class="container">
        <h3>나폴레옹은 이렇게 말했다.</h3>
        <p>"오늘 나의 불행은 언젠가 내가 잘못 보낸 시간의 보복이다."</p>
  	 	<h3>"... 장벽은 절실하게 원하지 않는 사람들을 걸러내려고 존재합니다. 장벽은. 당신이 아니라 '다른' 사람들을 멈추게 하려고 거기 있는 것이지요."</h3>
         <h3>혜광스님</h3>
         <p>행복한 삶의 비결은.</p>
         <p>좋아하는 일을 하는 것이 아리라,</p>
         <p>지금 하는 일을 좋아하는 것입니다.</p>
  	 </div>

</body>

</html>