package com.leon.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.leon.domain.CartVO;
import com.leon.domain.CartVOList;
import com.leon.mapper.CartMapper;

import lombok.Setter;

@Service
public class CartServiceImpl implements CartService {

	@Setter(onMethod_ = {@Autowired})
	private CartMapper cartMapper;
	
	@Override
	public void cart_add(CartVO vo) {
		// TODO Auto-generated method stub
		cartMapper.cart_add(vo);
	}

	@Override
	public List<CartVOList> cart_list(String mem_id) {
		// TODO Auto-generated method stub
		return cartMapper.cart_list(mem_id);
	}

	@Override
	public void cart_qty_change(Long cart_code, int cart_amount) {
		// TODO Auto-generated method stub
		cartMapper.cart_qty_change(cart_code, cart_amount);
		
	}

	@Override
	public void cart_delete(Long cart_code) {
		// TODO Auto-generated method stub
		cartMapper.cart_delete(cart_code);
	}

	@Override
	public void cart_empty(String mem_id) {
		// TODO Auto-generated method stub
		cartMapper.cart_empty(mem_id);
	}

	@Override
	public void cart_sel_delete(List<Long> cart_code_arr) {
		// TODO Auto-generated method stub
		cartMapper.cart_sel_delete(cart_code_arr);
	}

	@Override
	public int getCartProdutCountByUserID(String mem_id) {
		// TODO Auto-generated method stub
		return cartMapper.getCartProdutCountByUserID(mem_id);
	}

}
