package com.leon.service;

import java.util.List;

import com.leon.dto.Criteria;
import com.leon.domain.CartVO;
import com.leon.domain.OrderDetailVO;
import com.leon.domain.OrderVO;
import com.leon.domain.PaymentVO;
import com.leon.domain.CartVOList;
import com.leon.domain.OrderDetailProductVO;

public interface OrderService {
	
	List<CartVOList> cart_list(String mem_id);
	
	// 장바구니 -> 주문
	void orderSave(OrderVO o_vo, PaymentVO p_vo);  // String type 제거
		
	// 바로구매 -> 주문
	void orderDirectSave(OrderVO o_vo, OrderDetailVO od_vo, PaymentVO p_vo);  // 추가
		
	CartVOList directOrder(CartVO vo);
	
	long getOrderSequence();
	
	int getOrderProcessCount(String mem_id);
	
	// 주문내역
	List<OrderVO> getOrderList(String mem_id, Criteria cri);
	
	int getOrderTotalCount(String mem_id);
	
	List<OrderDetailProductVO> getOrderDetailList(Long odr_code);

}
