package com.leon.service;

import java.util.List;

import com.leon.domain.CartVOList;
import com.leon.domain.CartVO;

public interface CartService {

	void cart_add(CartVO vo);
	
	List<CartVOList> cart_list(String mem_id);
	
	void cart_qty_change(Long cart_code, int cart_amount);
	
	void cart_delete(Long cart_code);
	
	void cart_empty(String mem_id);
	
	void cart_sel_delete(List<Long> cart_code_arr);
	
	int getCartProdutCountByUserID(String mem_id);
}
