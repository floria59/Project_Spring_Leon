<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
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

<!--
    
TemplateMo 559 Zay Shop

https://templatemo.com/tm-559-zay-shop

-->
	<script>
	
      let msg = '${msg}';
      if(msg != '') {
        alert(msg);
      }

    </script>
    
</head>

<body>

    <!-- 헤더 -->
    <%@include file="/WEB-INF/views/include/header.jsp" %>


    <!-- Modal -->
    <div class="modal fade bg-white" id="templatemo_search" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-lg" role="document">
            <div class="w-100 pt-1 mb-5 text-right">
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <form action="" method="get" class="modal-content modal-body border-0 p-0">
                <div class="input-group mb-2">
                    <input type="text" class="form-control" id="inputModalSearch" name="q" placeholder="Search ...">
                    <button type="submit" class="input-group-text bg-success text-light">
                        <i class="fa fa-fw fa-search text-white"></i>
                    </button>
                </div>
            </form>
        </div>
    </div>



    <!-- Start Banner Hero -->
    <div id="template-mo-zay-hero-carousel" class="carousel slide" data-bs-ride="carousel">
        <ol class="carousel-indicators">
            <li data-bs-target="#template-mo-zay-hero-carousel" data-bs-slide-to="0" class="active"></li>
            <li data-bs-target="#template-mo-zay-hero-carousel" data-bs-slide-to="1"></li>
            <li data-bs-target="#template-mo-zay-hero-carousel" data-bs-slide-to="2"></li>
        </ol>
        <div class="carousel-inner">
            <div class="carousel-item active">
                <div class="container">
                    <div class="row p-5">
                        <div class="mx-auto col-md-8 col-lg-6 order-lg-last">
                            <img class="img-fluid" src="./resources/img/banner_img_011.jpg" alt="">
                        </div>
                        <div class="col-lg-6 mb-0 d-flex align-items-center">
                            <div class="text-align-left align-self-center">
                                <h1 class="h1 text-success"><b>Leon</b> Happy </h1>
                                <h3 class="h2">NEW Christmas</h3>
                                <p>
                                   	크리스마스 오너먼트 출시
                                </p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="carousel-item">
                <div class="container">
                    <div class="row p-5">
                        <div class="mx-auto col-md-8 col-lg-6 order-lg-last">
                            <img class="img-fluid" src="./resources/img/banner_img_012.jpg" alt="">
                        </div>
                        <div class="col-lg-6 mb-0 d-flex align-items-center">
                            <div class="text-align-left">
                                <h1 class="h1">2023 계묘년</h1>
                                <h3 class="h2">복 많이 받으라묘</h3>
                                <p>
                                 	검은토끼해 럭키박스 <br>
                                 	2023년 1월 1일 OPEN !
                                </p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="carousel-item">
                <div class="container">
                    <div class="row p-5">
                        <div class="mx-auto col-md-8 col-lg-6 order-lg-last">
                            <img class="img-fluid" src="./resources/img/banner_img_013.jpg" alt="">
                        </div>
                        <div class="col-lg-6 mb-0 d-flex align-items-center">
                            <div class="text-align-left">
                                <h1 class="h1">Leon</h1>
                                <h3 class="h2">sns</h3>
                                <p>
                                   	 인기제품 바로가기 
                                </p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <a class="carousel-control-prev text-decoration-none w-auto ps-3" href="#template-mo-zay-hero-carousel" role="button" data-bs-slide="prev">
            <i class="fas fa-chevron-left"></i>
        </a>
        <a class="carousel-control-next text-decoration-none w-auto pe-3" href="#template-mo-zay-hero-carousel" role="button" data-bs-slide="next">
            <i class="fas fa-chevron-right"></i>
        </a>
    </div>
    <!-- End Banner Hero -->


    <!-- Start Categories of The Month -->
    <section class="container py-5">
        <div class="row text-center pt-3">
            <div class="col-lg-6 m-auto">
                <h1 class="h1">#Christmas</h1>
                <p>
                                             해피 크리스마스 
                </p>
            </div>
        </div>
        <div class="row">
            <div class="col-12 col-md-4 p-5 mt-3">
                <a href="#"><img src="./resources/img/category_img_011.jpg" class="rounded-circle img-fluid border"></a>
                <h5 class="text-center mt-3 mb-3">데코</h5>
                <p class="text-center"><a class="btn btn-success">바로가기</a></p>
            </div>
            <div class="col-12 col-md-4 p-5 mt-3">
                <a href="#"><img src="./resources/img/category_img_012.jpg" class="rounded-circle img-fluid border"></a>
                <h2 class="h5 text-center mt-3 mb-3">리스</h2>
                <p class="text-center"><a class="btn btn-success">바로가기</a></p>
            </div>
            <div class="col-12 col-md-4 p-5 mt-3">
                <a href="#"><img src="./resources/img/category_img_013.jpg" class="rounded-circle img-fluid border"></a>
                <h2 class="h5 text-center mt-3 mb-3">오너먼트</h2>
                <p class="text-center"><a class="btn btn-success">바로가기</a></p>
            </div>
        </div>
    </section>
    <!-- End Categories of The Month -->

        
        <!-- 푸터 -->
    	<%@include file="/WEB-INF/views/include/footer.jsp" %>
    	

    <!-- End Featured Product -->
    

    <!-- Start Script -->
    <script src="<c:url value = "/resources/js/jquery-1.11.0.min.js" />"></script>
    <script src="<c:url value = "/resources/js/jquery-migrate-1.2.1.min.js" />"></script>
    <script src="<c:url value = "/resources/js/bootstrap.bundle.min.js" />"></script>
    <script src="<c:url value = "/resources/js/templatemo.js" />"></script>
    <script src="<c:url value = "/resources/js/custom.js" />"></script>
    <!-- End Script -->
</body>

</html>