package com.leon.domain;

import lombok.Data;

// 주문관리 : 주문상세정보에서 주문상품 상세정보를 사용. 
//( OrderDetailVO, ProductVO 2개의 클래스를 사용하지않고, 새로운 VO클래스를 생성하여 사용하자 )

@Data
public class OrderDetailVOList {
	
	private Long odr_code;
	private Integer pdt_num;
	private String pdt_name;
	private int pdt_price;
	private int odr_amount;
	private int odr_price;
	private String pdt_img_folder;
	private String pdt_img;

}
