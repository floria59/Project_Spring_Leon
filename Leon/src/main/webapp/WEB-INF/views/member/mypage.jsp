<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<html lang="ko">
  <head>
  <%@include file="/WEB-INF/views/include/common.jsp" %>
  
  	<title>Leon</title>
   	<meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">


    <link rel="apple-touch-icon" type = "image/png" href="${pageContext.request.contextPath}/resources/img/apple-icon.png">
    <link rel="shortcut icon" type = "image/x-icon" href="${pageContext.request.contextPath}/resources/img/favicon_02.ico">
    
    <link rel="stylesheet" type = "text/css" href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css">
    <link rel="stylesheet" type = "text/css" href="${pageContext.request.contextPath}/resources/css/templatemo.css">
    <link rel="stylesheet" type = "text/css" href="${pageContext.request.contextPath}/resources/css/custom.css">

    <!-- Load fonts style after rendering the layout styles -->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Roboto:wght@100;200;300;400;500;700;900&display=swap">
    <link rel="stylesheet" type = "text/css" href="${pageContext.request.contextPath}/resources/css/fontawesome.min.css">
    

    <link rel="canonical" href="https://getbootstrap.com/docs/4.6/examples/pricing/">



    <!-- Favicons -->
<link rel="apple-touch-icon" href="/docs/4.6/assets/img/favicons/apple-touch-icon.png" sizes="180x180">
<link rel="icon" href="/docs/4.6/assets/img/favicons/favicon-32x32.png" sizes="32x32" type="image/png">
<link rel="icon" href="/docs/4.6/assets/img/favicons/favicon-16x16.png" sizes="16x16" type="image/png">
<link rel="manifest" href="/docs/4.6/assets/img/favicons/manifest.json">
<link rel="mask-icon" href="/docs/4.6/assets/img/favicons/safari-pinned-tab.svg" color="#563d7c">
<link rel="icon" href="/docs/4.6/assets/img/favicons/favicon.ico">
<meta name="msapplication-config" content="/docs/4.6/assets/img/favicons/browserconfig.xml">
<meta name="theme-color" content="#563d7c">


    <style>
      .bd-placeholder-img {
        font-size: 1.125rem;
        text-anchor: middle;
        -webkit-user-select: none;
        -moz-user-select: none;
        -ms-user-select: none;
        user-select: none;
      }

      @media (min-width: 768px) {
        .bd-placeholder-img-lg {
          font-size: 3.5rem;
        }
      }
    </style>
	<script>
      let msg = '${msg}';
      if(msg != '') {
        alert(msg);
      }

    </script>
    
   
  </head>
  <body>
    
<%@include file="/WEB-INF/views/include/header.jsp" %>


	<div class="container">
		<br>
		<h3 style=text-align:center>MYPAGE</h3>
		<br>
	
		<div class="row justify-content-center">
		<div class="col-md-6 contents">

	  		<div class="mb-2 text-center">
			  <div class="form-group row">
			    <label class="col-sm-5 col-form-label" style= text-align:right>회원 가입일</label>
			    <div class="col-sm-5">
			       <span><fmt:formatDate value="${sessionScope.loginStatus.mem_date_sub }" pattern="yyyy-MM-dd hh:mm" /></span>
			    </div>		    
			  </div>
			</div>
			
			<div class="mb-2 text-center">
			  <div class="form-group row">
			    <label class="col-sm-5 col-form-label" style= text-align:right>최근 로그인</label>
			    <div class="col-sm-5">
			        <span><fmt:formatDate value="${sessionScope.loginStatus.mem_date_last }" pattern="yyyy-MM-dd hh:mm" /></span>
			    </div>		    
			  </div>
			</div>
			
			<div class="mb-2 text-center">
			  <div class="form-group row">
			    <label  class="col-sm-5 col-form-label" style= text-align:right>진행중 주문</label>
			    <div class="col-sm-5">
			        <span>${orderProcessCount} 개</span>
			    </div>		    
			  </div>
			</div>
			
			<div class="mb-2 text-center">
			  <div class="form-group row">
			    <label  class="col-sm-5 col-form-label" style= text-align:right>장바구니</label>
			    <div class="col-sm-5">
			        <span>${cartProductCount} 개</span>
			    </div>		    
			  </div>
			</div>
			
			<div class="mb-2 text-center">
			  <div class="form-group row">
			    <label  class="col-sm-5 col-form-label" style= text-align:right>총 주문금액</label>
			    <div class="col-sm-5">
			       <span><fmt:formatNumber type="currency" pattern="#,###" value="${odr_totalPrice }" />원</span>
			    </div>		    
			  </div>
			</div>
			
			<div class="mb-2 text-center">
			  <div class="form-group row">
			    <label  class="col-sm-5 col-form-label" style= text-align:right>사용가능 포인트</label>
			    <div class="col-sm-5">
			       <span>${sessionScope.loginStatus.mem_point }원</span>
			    </div>		    
			  </div>
			</div>
		  		  

	  	</div>
	  </div>
	</div>
	<br><br>
	  



	<!--  footer.jsp -->
  <%@include file="/WEB-INF/views/include/footer.jsp" %>


  </body>
</html>
