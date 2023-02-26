<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
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

    



    <!-- Favicons 
<link rel="apple-touch-icon" href="/docs/4.6/assets/img/favicons/apple-touch-icon.png" sizes="180x180">
<link rel="icon" href="/docs/4.6/assets/img/favicons/favicon-32x32.png" sizes="32x32" type="image/png">
<link rel="icon" href="/docs/4.6/assets/img/favicons/favicon-16x16.png" sizes="16x16" type="image/png">
<link rel="manifest" href="/docs/4.6/assets/img/favicons/manifest.json">
<link rel="mask-icon" href="/docs/4.6/assets/img/favicons/safari-pinned-tab.svg" color="#563d7c">
<link rel="icon" href="/docs/4.6/assets/img/favicons/favicon.ico">
<meta name="msapplication-config" content="/docs/4.6/assets/img/favicons/browserconfig.xml">
-->
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

	<div class="row justify-content-center">
	<div class="col-md-6 contents">
	<div class="mb-4">
	
	<br>
	<h3 style=text-align:center>아이디 / 비밀번호찾기</h3>
	<hr>
	<br>
	  <div class="mb-3 text-center row">
		 <!-- 아이디찾기 -->
		 <div class="col-sm-12">
		 	<h5>아이디찾기</h5><br>
		 	<form id="searchForm" action="searchID" method="post">
			  <div class="form-group row">
			    <label for="mem_name" class="col-sm-4 col-form-label" >이름</label>
			    <div class="col-sm-8">
			      <input type="text" class="form-control" id="mem_name" name="mem_name" placeholder="이름을 입력하세요.">
			    </div>
			  </div>
			  <div class="form-group row">
			    <label for="mem_email" class="col-sm-4 col-form-label">이메일</label>
			    <div class="col-sm-8">
			      <input type="text" class="form-control" id="mem_email" name="mem_email" placeholder="이메일을 입력하세요.">
			    </div>
			  </div>
			  <div class="form-group row">
				  <div class="col-sm-12 text-center">
				  	<button type="submit" class="btn btn-pill text-white btn-block btn-success" id="btnLogin">아이디 찾기</button>
				  	<!--<button type="button" class="btn btn-pill text-white btn-block btn-success" id="btnSearchIDPW">로그인</button>-->
				  </div>			
			  </div>
		 	</form>
		 	 <br><br>
		 </div>
		 
	
		 
		 <!-- 임시비밀번호 발급 -->
		 <div class="col-sm-12">
		 	<h5>임시 비빌번호 발급하기</h5><br>
		 	<form id="loginForm" action="searchPw" method="post">
			  <div class="form-group row">
			    <label for="mem_id" class="col-sm-4 col-form-label">아이디</label>
			    <div class="col-sm-8">
			      <input type="text" class="form-control" id="mem_id" name="mem_id" placeholder="아이디를 입력하세요." required>
			    </div>
			  </div>
			  <div class="form-group row">
			    <label for="mem_pw" class="col-sm-4 col-form-label">이메일</label>
			    <div class="col-sm-8">
			      <input type="text" class="form-control" id="mem_email" name="mem_email" placeholder="이메일을 입력하세요." required>
			    </div>
			  </div>
			  <div class="form-group row">
				  <div class="col-sm-12 text-center">
				  	<button type="submit" class="btn btn-pill text-white btn-block btn-success" id="btnLogin">임시 비밀번호 발급</button>
				  	<!-- <button type="button" class="btn btn-dark" id="btnSearchIDPW">로그인</button> -->
				  </div>			
			  </div>
		 	</form>
	 </div>
  </div>
  </div>
  </div>

</div>
</div>
	 <!-- 푸터 -->
 	<%@include file="/WEB-INF/views/include/footer.jsp" %>

  </body>
</html>
