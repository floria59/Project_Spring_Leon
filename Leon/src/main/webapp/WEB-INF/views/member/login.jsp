
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

    <!-- Load fonts style after rendering the layout styles-->
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

	
	<div class="container" >
		<br>

		<div class="row justify-content-center">
		<div class="col-md-6 contents">
		<div class="mb-4">
		
		<h3>LOGIN</h3>
		
		</div>
		 <form id="loginForm" action="loginPost" method="post">
		<div class="form-group row">
			<label for="mem_id" class="col-sm-2 col-form-label">아이디</label>
			<div>
		      <input type="text" class="form-control" id="mem_id" name="mem_id" placeholder="아이디를 입력하세요" required>
		    </div>
		</div>
		
		<div class="form-group row">
		    <label for="mem_pw" class="col-sm-3 col-form-label">비밀번호</label>
		    <div >
		      <input type="password" class="form-control" id="mem_pw" name="mem_pw" placeholder="비밀번호를  입력하세요" required>
		    </div>
		  </div>
		  
		 <div class="form-group row">
			  <div >
			  <input type="submit"  value="LOGIN" class="btn btn-pill text-white btn-block btn-success" id="btnLogin"> 
			  <input type="button"  value="ID / PW Search" class="btn btn-pill text-white btn-block btn-success" id="btnSearchIDPW">
			  </div>			
		  </div>
		  <br>
		  
		  <div class="link-join">
                <h3>JOIN US</h3>
                <hr>
				<h style="font-size: medium">
					아직 회원이아니세요? <br>
					회원가입을 하시면 다양하고 특별한 혜택이 준비되어 있습니다.
				</h>
				<br><br>
                <a href="/member/join" class="btn btn-pill text-black btn-block btn-outline-success" >JOIN</a>
                <br><br>
		</div>
	 </form>
	</div>
  </div>
</div>
	<!-- 푸터 -->
    <%@include file="/WEB-INF/views/include/footer.jsp" %>


  <script>

    $(document).ready(function() {
      $("#btnSearchIDPW").on("click", function() {
        location.href = "/member/lostpass";
      });
    });

  </script>
  </body>
</html>
