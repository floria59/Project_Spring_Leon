<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

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
    

    <link rel="canonical" href="https://getbootstrap.com/docs/4.6/examples/pricing/">
    
    <%@include file="/WEB-INF/views/include/header.jsp" %>

        
    <link rel="stylesheet" href="//code.jquery.com/ui/1.13.2/themes/base/jquery-ui.css">
    <script src="https://code.jquery.com/ui/1.13.2/jquery-ui.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/handlebars.js/3.0.1/handlebars.js"></script>
    
    <script id="reviewTemplate" type="text/x-handlebars-template">
    {{#each .}}
      <p>{{rv_content}}</p>
      <div class="row">
        <div class="col-md-3">{{idThreeDisplay mem_id}}</div>
        <div class="col-md-9">{{prettifyDate rv_date_reg}}</div>
      </div>
      <div class="row">
        <div class="col-md-3">
            {{displayStar rv_score}}
            <input type="hidden" name="rv_score" value="{{rv_score}}">
        </div>
        <div class="col-md-9">{{authorityview mem_id rv_num}}</div>
      </div>
      <hr>
    {{/each}}
    </script>

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
    
      p#star_rv_score a.rv_score {
      	font-size: 22px;
      	text-decoration: none;
      	color: lightgray;
      }
      
      p#star_rv_score a.rv_score.on {
      	color: black;
      }
      
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
  
  	<div class="row justify-content-center">
	<div class="col-md-9 contents">
	    
	<div class="pricing-header px-3 py-3 pt-md-5 pb-md-4 mx-auto text-center">
	  <h1 class="display-3">${cate_name }</h1>
	</div>
	
	<div class="container">
	  	<div class="row mb-3">
		    <div class="col-md-7" style="text-align: center">
		      <img src="/product/displayFile?folderName=${productVO.pdt_img_folder }&fileName=${productVO.pdt_img}" alt="" width="450" height="450">
		    </div>
		    
		    <div class="col-md-5">
		      <div class="card-body" style="text-align: left;">
		        <h5 class="card-title">${productVO.pdt_name }</h5><hr>
		        <input type="hidden" name="pdt_num" value="${productVO.pdt_num }">
		        <p>Price : <b><fmt:formatNumber type="currency" pattern="#,###" value="${productVO.pdt_price }" /></b>??? </p>
		        <p>?????? : <input type="text" name="odr_amount" value="1"> ??? </p>
		        <p class="card-text"><small class="text-muted">Last updated 3 mins ago</small></p>
		      </div>
		      <div class="card-body" style="text-align: center;">
		         <button type="button" name="btnDirectOrder"  class="btn btn-pill text-black btn-block btn-outline-success">????????????</button>
		         <button type="button" name="btnCart" class="btn btn-pill text-black btn-block btn-outline-success">????????????</button>
		      </div>
		    </div>
		</div>
	
	   <div class="row">
	   	<div class="col-md-12">
	   		<div id="tabs">
	   		
	   			<ul>
	   				<li><a href="#product_desc">DETAIL</a></li>
	   				<li><a href="#product_qna">REVIEW</a></li>
	   			</ul>
	   			
	   			<div id="product_desc">
	   				${productVO.pdt_detail }
	   			</div>
	   			
	   			<div id="product_qna">
	   				<h5>????????????</h5>
	   				<div class="form-group row">
	   					<div class="col-md-12">
	   						<p id="star_rv_score" >
	   							?????? :
	   							<a class="rv_score" href="#" style="text-decoration-line: none">???</a>
	   							<a class="rv_score" href="#" style="text-decoration-line: none">???</a>
	   							<a class="rv_score" href="#" style="text-decoration-line: none">???</a>
	   							<a class="rv_score" href="#" style="text-decoration-line: none">???</a>
	   							<a class="rv_score" href="#" style="text-decoration-line: none">???</a>
	   						</p>
	   					</div>
	   				</div>
	   				
	   				<div class="form-group row" >
	   					<div class="col-md-12">
	   						<textarea rows="3" cols="80" class="form-control" id="rv_content"></textarea>
	   						<button type="button" id="btn_review_write" class="btn btn-link text-dark"  style="text-decoration: none">????????????</button>
	               			<button type="button" id="btn_review_edit" class="btn btn-link" style="display:none ;">??????</button>
	   					</div>
	   					<hr class="col-md-11">
	   				</div>
	
			        <!--???????????? ????????????-->
			        <div class="row" id="reviewList">
			          <div class="col-md-12" id="reviewItem"></div>
			        </div>
			        
			        <!-- ???????????? ????????? ???????????? -->
			        <div class="row" id="reviewPaging">
			          <div class="col-md-12" id="reviewPaingItem">
			            <nav aria-label="Page navigation example">
			              <ul class="pagination"></ul>
	              		</nav>
	            	 </div>
	                </div>
	   			</div>
	   		</div>
	   	  </div>
	    </div> <br><br><br>
	</div>
	</div>
	</div>

	<%@include file="/WEB-INF/views/include/footer.jsp" %>


  <script>

    $(document).ready(function(){
	  // ????????????, ???????????? Tab
      $("#tabs").tabs();	
    	
      //???????????? ??????
      $("button[name='btnCart']").on("click", function(){
        
        $.ajax({
          url: '/cart/cart_add',
          data: {pdt_num : $("input[name='pdt_num']").val(), cart_amount : $("input[name='odr_amount']").val()},  // javascript object??????
          success : function(result) {
            if(result == "success") {
              alert("??????????????? ?????????.");
              if(confirm("??????????????? ?????????????????????????")) {
                location.href = "/cart/cart_list";
              }
            }
          }
        });
      });


      //???????????? ?????? 1???
      $("button[name='btnDirectOrder']").on("click", function() {

          //???????????? ?????????
          //????????????, ??????: ????????? 1
          let pdt_num = $("input[name='pdt_num']").val();  //           $("input[name='pdt_num']").val();
          let odr_amount = $("input[name='odr_amount']").val();

          let url = "/order/orderListInfo?pdt_num=" + pdt_num + "&odr_amount=" + odr_amount + "&type=direct";

          console.log("????????????URL: " + url);

          location.href = url;

      });

      // ?????? ??? ??????
      $("p#star_rv_score a.rv_score").on("click", function(e) {
        e.preventDefault();

        $(this).parent().children().removeClass("on"); // ????????? p?????????????????? ?????? a????????? class="on" ??? ??????????????????.
        $(this).addClass("on").prevAll("a").addClass("on");
      });


      // ???????????? ??????
      $("#btn_review_write").on("click", function() {

          let rv_score = 0;
          let rv_content = $("#rv_content").val();

          $("p#star_rv_score a.rv_score").each(function(index, item) {
            if($(this).attr("class") == "rv_score on") {
              rv_score += 1;
            }
          });

          if(rv_score == 0) {
            alert("??? ????????? ??????????????????.");
            return;
          }

          if(rv_content == "") {
            alert("??????????????? ??????????????????.");
            return;
          }

          // JavaScript Object??????
          let review_data = { pdt_num : $("input[name='pdt_num']").val() , rv_content : rv_content, rv_score: rv_score };

          $.ajax({
            url: '/review/new',
            headers: {
              "Content-Type" : "application/json", "X-HTTP-Method-Override" : "POST"
            }, 
            type: 'post',
            dataType : 'text',
            data: JSON.stringify(review_data),  // JSON?????????
            success : function(result) {
              if(result == 'success') {
                alert("??????????????? ?????????????????????.");
                getPage(url);

                // ?????????
                $("p#star_rv_score a.rv_score").removeClass("on");
                $("#rv_content").val("");
                /*
                $("#btn_review_edit").parent().find("input[name='rv_num']").remove();
                $("#btn_review_edit").hide();
                $("#btn_review_write").show();
                */
              }
            }
          });
      });
    });  // ready ????????? ???.


    //???????????? ????????????

    let reviewPage = 1;  //???????????? ???????????????
    let url = "/review/list/" + $("input[name='pdt_num']").val() + "/" + reviewPage;

    getPage(url);


    function getPage(pageInfo) {

      console.log("url: " + pageInfo);

      $.getJSON(pageInfo, function(data) {

        //console.log("????????????: " + data.list);
        //console.log("?????????????????????: " + data.pageMaker);
        printReviewList(data.list, $("div#reviewList div#reviewItem"), $("#reviewTemplate"));
        printreviewPaging(data.pageMaker, $("div#reviewPaging  ul.pagination"));
      });
    }

    // 1)???????????? ?????? ???????????? ??????
    let printReviewList = function(reviewData, target, templateObj) {

      let template = Handlebars.compile(templateObj.html());

      let reviewHtml = template(reviewData); // ???????????? ???????????? ????????? ??????

      target.children().remove();
      target.append(reviewHtml);
    }

    //???????????? ????????? ?????? ??????.  ?????????????????? ???????????? https://www.w3schools.com/js/js_dates.asp
    //??????????????? Helper??????. ??????????????? ??????
    Handlebars.registerHelper("prettifyDate", function(timeValue) {

      let dateObj = new Date(timeValue);
      let year = dateObj.getFullYear();
      let month = dateObj.getMonth() + 1;
      let date = dateObj.getDate();
      let hour = dateObj.getHours();
      let minute = dateObj.getMinutes();

      return year + "/" + month + "/" + date + " " + hour + ":" + minute;
    }); 

    // ?????? ???????????????
    Handlebars.registerHelper("displayStar", function(rating){

      let starStr = "";
      switch(rating) {
        case 1:
          starStr = "???????????????";
          break;
        case 2:
          starStr = "???????????????";
          break;
        case 3:
          starStr = "???????????????";
          break;
        case 4:
          starStr = "???????????????";
          break;
        case 5:
          starStr = "???????????????";
          break;
      }

      return starStr;
    });

    // ????????? 3?????? ????????????
    Handlebars.registerHelper("idThreeDisplay", function(userid) {

      return userid.substring(0, 3) + "*******";
    });

    //?????????????????? ???????????? ????????? ?????? ??????,???????????? ??????
    Handlebars.registerHelper("authorityview", function(mem_id, rv_num) {

      let str = "";
      let login_id = '${sessionScope.loginStatus.mem_id}';
      if(mem_id == login_id) {
        str += "<button type='button' class='btn btn-link' name='review_edit' data-rv_num='" + rv_num + "'>[edit]</button>";
        str += "<button type='button' class='btn btn-link' name='review_delete' data-rv_num='" + rv_num + "'>[delete]</button>";
      }
      return new Handlebars.SafeString(str);
    });



    // 2)???????????? ????????? ???????????? ??????
    let printreviewPaging = function(pageMaker, target) {

      let pagingStr = "";

      //????????????.   pageMaker.startPage - 1
      if(pageMaker.prev) {
        pagingStr += "<li class='page-item'><a class='page-link' href='" +  (pageMaker.startPage - 1) + "' aria-label='Previous'><span aria-hidden='true'>&laquo;</span></a></li>";
      }

      //??????????????? ??????
      for(let i=pageMaker.startPage; i<=pageMaker.endPage; i++) {
        let classStr = pageMaker.cri.pageNum == i ? "active" : "";
        pagingStr += "<li class='page-item " + classStr + "'><a class='page-link' href='" + i + "'>" + i + "</a></li>";
      }

      //????????????. pageMaker.endPage + 1
      if(pageMaker.next) {
        pagingStr += "<li class='page-item'><a class='page-link' href='" + (pageMaker.endPage + 1) + "' aria-label='Next'><span aria-hidden='true'>&raquo;</span></a></li>";
      }

      //console.log("??????????????????: " + pagingStr);

      target.children().remove();
      target.append(pagingStr);

    }

  </script>
  <script>

    $(document).ready(function(){

      // ??????, ???????????????, ?????? ??????
      $("nav ul.pagination").on("click", "li a.page-link", function(e){
        e.preventDefault();
        console.log("???????????????");
        
        reviewPage = $(this).attr("href"); // ?????? ????????? ???????????????
        url = "/review/list/" + $("input[name='pdt_num']").val() + "/" + reviewPage;

        getPage(url);
      });

      //???????????? ??????
      $("div#reviewList div#reviewItem").on("click", "button[name='review_delete']", function() {
        

        let rv_num = $(this).data("rv_num");

        if(!confirm("???????????? " + rv_num + " ?????? ?????????????????????????")) return;

        console.log("???????????? ??????: " + rv_num);

        $.ajax({
          url: '/review/delete/' + rv_num,
          headers: {
            "Content-Type" : "application/json", "X-HTTP-Method-Override" : "DELETE"
          },
          type: 'delete',
          dataType: 'text',
          success: function(result) {
            if(result == "success") {
              alert("??????????????? ?????????????????????");

              url = "/review/list/" + $("input[name='pdt_num']").val() + "/" + reviewPage;
              getPage(url);
            }
          }
        });
      });

      //???????????? ?????????.  review_edit
      $("div#reviewList div#reviewItem").on("click", "button[name='review_edit']", function() {

        $("#btn_review_write").hide();
        $("#btn_review_edit").show();

        
        let rv_score = $(this).parent().parent().find("input[name='rv_score']").val();
        let rv_num = $(this).data("rv_num");
        let rv_content = $(this).parent().parent().prev().prev().html();

        console.log("?????????: " + rv_score);
        console.log("???????????? ??????: " + rv_num);
        console.log("????????????: " + rv_content );

        $("textarea#rv_content").val(rv_content);

        $("textarea#rv_content").parent().find("input[name='rv_num']").remove();
        $("textarea#rv_content").parent().append("<input type='text' name='rv_num' id='rv_num' readonly value='" + rv_num + "'>");
        
        $("#star_rv_score a.rv_score").each(function(index, item) {
          if(index < rv_score) {
            $(item).addClass("on");
          }else {
            $(item).removeClass("on");
          }
        });
      });

      //???????????? ????????????
      $("#btn_review_edit").on("click", function() {

        let rv_score = 0;
        let rv_content = $("#rv_content").val();

        $("p#star_rv_score a.rv_score").each(function(index, item) {
          if($(this).attr("class") == "rv_score on") {
            rv_score += 1;
          }
        });

        if(rv_score == 0) {
          alert("??? ????????? ??????????????????.");
          return;
        }

        if(rv_content == "") {
          alert("??????????????? ??????????????????.");
          return;
        }

        // JavaScript Object??????
        let review_data = { rv_num : $("input[name='rv_num']").val() , rv_content : rv_content, rv_score: rv_score };

        $.ajax({
          url: '/review/modify',
          headers: {
            "Content-Type" : "application/json", "X-HTTP-Method-Override" : "PATCH"
          }, 
          type: 'patch',
          dataType : 'text',
          data: JSON.stringify(review_data),  // JSON?????????
          success : function(result) {
            if(result == 'success') {
              alert("??????????????? ?????????????????????.");

              url = "/review/list/" + $("input[name='pdt_num']").val() + "/" + reviewPage;
              getPage(url);


              // ?????????
              $("p#star_rv_score a.rv_score").removeClass("on");
              $("#rv_content").val("");
              $("#btn_review_edit").parent().find("input[name='rv_num']").remove();
              $("#btn_review_edit").hide();
              $("#btn_review_write").show();

            }
          }
        });
      });
    });

  </script>  
  </body>
</html>
