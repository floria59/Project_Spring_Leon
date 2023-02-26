package com.leon.domain;

import lombok.Data;

//주문관리 : 주문 상세정보에서 주문 상세 상품정보를 사용한다.
//OrderDetailVO, ProductVO 2개의 기존클래스 사용 -> 기존 클래스를 이용하는 목적으로 만듦

@Data
public class OrderDetailProductVO {
	
	// 기존클래스
	private OrderDetailVO orderDetailVO; // 주문상세 클래스
	private ProductVO productVO; // 상품 클래스

}
