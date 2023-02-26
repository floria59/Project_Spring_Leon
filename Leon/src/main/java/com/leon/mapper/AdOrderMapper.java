package com.leon.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.leon.domain.OrderDetailProductVO;
import com.leon.domain.OrderDetailVOList;
import com.leon.domain.OrderVO;
import com.leon.domain.PaymentVO;
import com.leon.dto.Criteria;

public interface AdOrderMapper {
	
	// 주문목록
	List<OrderVO> getOrderList(@Param("cri") Criteria cri, 
			   				   @Param("startDate") String startDate, @Param("endDate") String endDate, 
			   				   @Param("odr_status") String odr_status);
	
	int getOrderTotalCount(@Param("cri") Criteria cri, 
			   			   @Param("startDate") String startDate, @Param("endDate") String endDate, 
			   			   @Param("odr_status") String odr_status);
	
	// 주문상태변경
	void orderStatusChange(@Param("odr_code") Long odr_code, @Param("odr_status") String odr_status);
	
	int orderStatusCount(String odr_status);
	
	//주문 상세정보 1 / 여러개기때문에 리스트로 받는다.
	List<OrderDetailVOList> getOrderDetailList1(Long odr_code);
	
	//주문상세정보2. resultMap 목적으로 주석처리함.
	List<OrderDetailProductVO> getOrderDetailList2(Long odr_code);
	
	// 결제정보 / 각 한건이기때문에 클래스로받는다.
	PaymentVO getPayment(Long odr_code);
	
	// 주문정보 / 각 한건이기때문에 클래스로받는다.
	OrderVO getOrder(Long odr_code);
	
	//관리자 메모
	void pay_memo(@Param("pay_code") Integer pay_code, @Param("pay_memo") String pay_memo);
		
	// 주문삭제
	void orderDelete(Long odr_code);
	void orderDetailDelete(Long odr_code);
	void paymentDelete(Long odr_code);
		
		
	//주문상세 개별상품삭제기능
		
	//1)개별상품삭제기능
	void orderDetailProductDelete(@Param("odr_code") Long odr_code, @Param("pdt_num") Integer pdt_num);
	
	//2)주문테이블 총주문금액 변경
	void orderTotalPriceChange(@Param("odr_code") Long odr_code, @Param("odr_price") int odr_price);

}
