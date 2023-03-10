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


<div class="pricing-header px-3 py-3 pt-md-5 pb-md-4 mx-auto text-center">
  <h1 class="display-4">${cate_name }</h1>
</div>

<div class="container">
  
  <div class="row">
  	<div class="col-md-12">
  		<div class="box">
			<div class="box-header">
				<h3 class="box-title" style=text-align:center>CART</h3>
			</div>
			<br>
			
			<div class="container">

			<div class="row justify-content-center">
			<div class="col-md-12 contents">

			<div class="box-body no-padding">
				<table class="table table-striped" id="cartlist">
				<tbody><tr style="text-align: center">
					<th style="width: 2%"><input type="checkbox" id="checkAll"></th>
					<th style="width: 12%">??????</th>
					<th style="width: 13%">????????????</th>
					<th style="width: 13%">?????????</th>
					<th style="width: 10%">??????</th>
					<th style="width: 10%">?????????</th>
					<th style="width: 10%">????????????</th>
					<th style="width: 10%">?????????</th>
					<th style="width: 10%">??????</th>
					<th style="width: 10%">??????</th>
					</tr>
				<c:forEach items="${cartList }" var="cartListVO">
				<c:set var="unit_price" value="${cartListVO.sales_price }" />
				<tr style="text-align: center" >
					<td><input type="checkbox" class="check" value="${cartListVO.cart_code }"></td>
					<td><img src="/cart/displayFile?folderName=${cartListVO.pdt_img_folder }&fileName=s_${cartListVO.pdt_img}"></td>
					<td>${cartListVO.pdt_name }</td>
					<td><span class="pdt_price"><fmt:formatNumber type="currency" pattern="#,###" value="${cartListVO.pdt_price }" /></span>???</td>
					<td>
						<input type="number" name="cart_amount" value="${cartListVO.cart_amount }" style="width:50px;">???<br>
						<button type="button" name="btnQtyChange" class="btn " style="text-decoration-line: none" >??????</button>
					</td>
					<td>?????????</td>
					<td>????????????</td>
					<td>??????</td>
					<td><span class="sales_price"><fmt:formatNumber type="currency" pattern="#,###" value="${cartListVO.sales_price }" />???
					</span></td>
					<td>
						<input type="hidden" name="cart_code" value="${cartListVO.cart_code }">
						
						<button type="button" name="btnCartDel" class="btn " style="text-decoration-line: none" >Delete</button>
					</td>
				</tr>
				<c:set var="sum_price" value="${sum_price +  unit_price}"></c:set>
				</c:forEach>
				</tbody>
				<tfoot>
					<tr>
					<c:if test="${empty  cartList}">
						<td colspan="10" style="text-align: center">??????????????? ????????? ????????????.</td>
					</c:if>
					<c:if test="${!empty  cartList}">
						<td colspan="10" style="text-align: right">??? ?????? : <b style="font-size: x-large"><span id="sum_price"><fmt:formatNumber type="currency" pattern="#,###" value="${sum_price }" /></span>???</b></td>
					</c:if>
					</tr>
				</tfoot>
				</table>
				</div>
				<c:if test="${!empty  cartList}">
				<div class="box-footer">
					<div class="row">
						<div class="col-md-12">
							<button type="button" name="btnSelectDel" class="btn btn-light" style="text-decoration-line: none">????????????</button>
							<button type="button" name="btnCartEmpty" class="btn btn-light" style="text-decoration-line: none">?????????????????????</button>
							<button type="button" name="btnOrder" class="btn btn-success" style="float: right">????????????</button><br>
						</div>
					</div>
				</div>
				</c:if>
				<br><br><br>
				</div>
			</div>
		</div>
	   </div>
  	</div>
  </div>
</div>

	<!-- ?????? -->
    <%@include file="/WEB-INF/views/include/footer.jsp" %>



  <script>
  
  
    $(document).ready(function(){

      //???????????? ??????
      $("button[name='btnCart']").on("click", function(){
        
        $.ajax({
          url: '/cart/cart_add',
          data: {pdt_num : $(this).parent().find("input[name='pdt_num']").val(), cart_amount : 1},  // javascript object??????
          success : function(result) {
            if(result == "success") {
              alert("??????????????? ?????????.");
              if(confirm("??????????????? ?????????????????????????")) {
                location.href = "????????????????????????";
              }
            }
          }
        });
      });

      //???????????? ??????
      
      $("button[name='btnQtyChange']").on("click", function(){
        
        let btnQtyChange = $(this); // ??????????????? ????????? ???????????? ????????? ??????.

        $.ajax({
          url: '/cart/cart_qty_change',
          data: {cart_code : $(this).parent().parent().find("input[name='cart_code']").val(), cart_amount : $(this).siblings("input[name='cart_amount']").val()},  // javascript object??????
          beforeSend : function(xhr) {
            xhr.setRequestHeader("AJAX", "true");
          },
          success : function(result) {
            if(result == "success") {
              alert("???????????? ????????? ?????????????????????.");
              //sales_price?????? ??????
              //????????? ????????????
              let pdt_price = parseInt($.withoutCommas(btnQtyChange.parent().parent().find("span.pdt_price").text()));
              let cart_amount = parseInt(btnQtyChange.siblings("input[name='cart_amount']").val());
              btnQtyChange.parent().parent().find("span.sales_price").text($.numberWithCommas(pdt_price*cart_amount)); // ????????? ????????? ??????
              
              //sum_price?????? ??????
              fn_sum_price();
              
          }
        },
        error : function(xhr, status, error) {
          alert(status);
          alert("????????? ???????????? ???????????????.");
          location.href = "/member/login";
        }
      });
    });

      //???????????? ??????
      $("button[name='btnCartDel']").on("click", function(){
        
        if(!confirm("????????? ??????????????????????")) return;

        let current_tr = $(this).parent().parent(); // ajax????????? ??????????????? ???????????? ???????????? ??????.(??????)
        
        $.ajax({
          url: '/cart/cart_delete',
          data: {cart_code : $(this).parent().find("input[name='cart_code']").val()},  // javascript object??????
          success : function(result) {
            if(result == "success") {
              alert("???????????? ????????? ?????????????????????.");
              current_tr.remove();

              //sum_price?????? ??????
              fn_sum_price();
 
            }
          }
        });
      });

      //?????????????????????
      // ??????????????????. ????????? ??? ??????
      $.withoutCommas = function(x) {

        return x.toString().replace(",", "");
      }

      //3???????????? ????????????. ????????? ??? ??????.
      $.numberWithCommas = function(x) {
        return x.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ',');
      }
      
      /*
      $.fn_sum_price = function() {
          let sum_price = 0;
          $("table#cartlist span.sales_price").each(function(index, item){
            sum_price += parseInt($.withoutCommas($(item).text()));  
          });
        
          $("span#sum_price").text($.numberWithCommas(sum_price)); 
        }
      
      */


      //???????????? ????????? ??????
      $("button[name='btnCartEmpty']").on("click", function(){

        if(!confirm("??????????????? ???????????????????")) return;
        location.href = "/cart/cart_empty";
      });

      //????????? ???????????? ??????
      let isCheck = true;
      $("#checkAll").on("click", function() {
        //????????? ??? checkbox
        $(".check").prop("checked", this.checked);

        isCheck = this.checked;
      });

      //???????????? ???????????? ??????
      $(".check").on("click", function(){
        //????????? ????????????
        $("#checkAll").prop("checked", this.checked);

        //??????????????? ???????????? ????????? ??????.
        $(".check").each(function() {
          if(!$(this).is(":checked")) {
            $("#checkAll").prop("checked", false);
          }
        });
      });

      //????????????
      $("button[name='btnSelectDel']").on("click", function() {
        if($(".check:checked").length == 0) {
          alert("????????? ????????? ???????????????.");
          return;
        }

        if(!confirm("?????? ????????? ?????????????????????????")) return;

        //?????? ??? ??????????????????.  ?????????????????? ?????? : https://www.w3schools.com/js/js_arrays.asp
        let cart_code_arr = [];

        //????????? ???????????? . 
        $(".check:checked").each(function() {
          cart_code_arr.push($(this).val());
        });

        console.log("????????? ??????????????????: " + cart_code_arr);


        $.ajax({
          url: '/cart/cart_sel_delete',
          type: 'post',
          dataType: 'text',
          data: { cart_code_arr: cart_code_arr },
          success: function(result) {
            if(result == "success") {
              alert("????????? ????????? ?????????????????????.");
              location.href = "/cart/cart_list";
            }
          }
        });

      });

      //????????????
      $("button[name='btnOrder']").on("click", function(){

        location.href = "/order/orderListInfo?type=cart";
      });


    }); // ready() ???

    //sum_price?????? ??????
    
    function fn_sum_price() {
        
      let sum_price = 0;
      $("table#cartlist span.sales_price").each(function(index, item){
        sum_price += parseInt($.withoutCommas($(item).text()));  
      });
      
      $("span#sum_price").text($.numberWithCommas(sum_price)); 
    }
    
    
    
    

  </script>  
  </body>
</html>
