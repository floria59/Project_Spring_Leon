<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

 <nav class="navbar navbar-light" style="background-color: #FFFFFF;" id="templatemo_nav_top">
        <div class="container text-light">
            <div class="w-100 d-flex justify-content-between">
                <div>
                    <a class="text-dark" href="https://facebook.com/" target="_blank" rel="sponsored" ><i class="fab fa-facebook-f fa-sm fa-fw me-2"></i></a>
                    <a class="text-dark" href="https://www.instagram.com/" target="_blank"><i class="fab fa-instagram fa-sm fa-fw me-2"></i></a>
                    <a class="text-dark" href="https://twitter.com/" target="_blank"><i class="fab fa-twitter fa-sm fa-fw me-2"></i></a>
                </div>
                
                <div>
                  <!-- 로그인 이전 상태표시 -->
				    <c:if test="${sessionScope.loginStatus == null }">
				    <a class="p-2 text-dark" href="/member/login" style="text-decoration:none" >LOGIN</a>
				    <a class="p-2 text-dark" href="/member/join" style="text-decoration:none" >JOIN</a>
				    </c:if>
				    
				    <!-- 로그인 이후 상태표시 -->
				    <c:if test="${sessionScope.loginStatus != null }">
				    <a class="p-2 text-dark" href="/member/logout" style="text-decoration:none">LOGOUT</a>
				    <a class="p-2 text-dark" href="/member/confirmPW" style="text-decoration:none">MODIFY</a>
				    </c:if>
				    <a class="p-2 text-dark" href="/cart/cart_list" style="text-decoration:none">CART</a>
				    <a class="p-2 text-dark" href="/order/orderList" style="text-decoration:none">ORDER</a>
				    <a class="p-2 text-dark" href="/member/mypage" style="text-decoration:none">MYPAGE</a>
				    
				    <a class="nav-icon d-none d-lg-inline" href="#" data-bs-toggle="modal" data-bs-target="#templatemo_search">
				    <i class="fa fa-fw fa-search text-dark mr-2"></i>
				    </a>
                </div>
            </div>
        </div>
    </nav>

	<div class="navbar navbar-expand-lg navbar-light">
	  <div class="container d-flex justify-content-between align-items-center">
	  <a class="navbar-brand text-success logo h1 align-self-center" href="http://localhost:8888/"  style=" color: yellow"> Leon</a>
	  
	  <nav class="my-1 my-md-0 mr-md-1">
 
		  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    		<span class="navbar-toggler-icon"></span>
  		  </button>
			
			 <div class="collapse navbar-collapse" id="navbarSupportedContent">
			     <ul class="navbar-nav mr-auto">
			      
				      <c:forEach items="${mainCateList }" var="categoryVO">
				      	<li class="nav-item dropdown">
				        
					        <!-- 1차카테고리 -->
					        <a class="nav-link dropdown-toggle" href="${categoryVO.cate_code }" role="button" data-toggle="dropdown" aria-expanded="false">
					          ${categoryVO.cate_name }
					        </a>
					        
					        <!-- 2차카테고리. 1차카테고리 선택된 next() -->
					        <div class="dropdown-menu subCateogory"></div>
				      	</li>
				      </c:forEach>
			      </ul>
			 </div>
	    </nav>
	  </div>
	</div>

<script>
  // $(document).ready(function(){  });
  $(function(){

    //1차카테고리 클릭
    $("ul.navbar-nav li.nav-item a").on("click", function(){

      // ajax작업 구문 사용시 이전에 필요한 선택자의 정보를 변수에 미리 저장해서 사용해야 한다.
      let selectedCategory = $(this);
      let url = "/product/subCategoryList/" + $(this).attr("href");

      //console.log("2차카테고리: " + url);

      // result : 2차카테고리 정보
      $.getJSON(url, function(result){
		   //2차카테고리 추가작업.

       
       let subCategoryList = selectedCategory.siblings("div.subCateogory");
       subCategoryList.children().remove(); // <a>태그 모두제거.

       let subCategoryStr = "";
       for(let i=0; i<result.length; i++){
        
        // 직접주소작업
        //subCategoryStr += "<a class='dropdown-item' href='/product/productList/" + result[i].cate_code + "'>" + result[i].cate_name +  "</a>";
        
        // jQuery 문법을 사용하여, 이벤트 적용을 통한 주소요청작업
        subCategoryStr += "<a class='dropdown-item' href='" + result[i].cate_code + "'>" + result[i].cate_name +  "</a>";
       }

       subCategoryList.append(subCategoryStr);

      });
      
    });

    //2차 카테고리 클릭.
    $("ul.navbar-nav li.nav-item div.subCateogory").on("click", "a", function(e){
      e.preventDefault();  // <a href=""></a> 링크기능제거, <input type="submit"> 전송기능 제거

      let cate_code = $(this).attr("href");
      let cate_name = $(this).html(); // 예> 맨투맨/후드티
      // get방식으로 특수문자 데이터가 서버로 보내질때 문제되는 경우 : 인코딩할 것.  검색어 : mdn url 인코딩
      location.href = "/product/productList/" + cate_code + "/" +  encodeURIComponent(cate_name);  // REST 개발방법론
    });
  });

</script>
  