package com.leon.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.leon.domain.MemberVO;
import com.leon.mapper.MemberMapper;

import lombok.Setter;

@Service
public class MemberServiceImpl implements MemberService {

	//의존성주입해주기
	@Setter(onMethod_ = {@Autowired})
	private MemberMapper memberMapper;
	
	
	@Override
	public String idCheck(String mem_id) {
		// TODO Auto-generated method stub
		return memberMapper.idCheck(mem_id);
	}

	@Override
	public void join(MemberVO vo) {
		// TODO Auto-generated method stub
		memberMapper.join(vo);
	}

	@Override
	public MemberVO login_ok(String mem_id) {
		// TODO Auto-generated method stub
		return memberMapper.login_ok(mem_id);
	}
	
	@Override
	public String getNameEmailExists(String mem_name, String mem_email) {
		// TODO Auto-generated method stub
		return memberMapper.getNameEmailExists(mem_name, mem_email);
	}
	
	@Override
	public String find_id(String mem_name) {
		// TODO Auto-generated method stub
		return memberMapper.find_id(mem_name);
	}

	@Override
	public String getIDEmailExists(String mem_id, String mem_email) {
		// TODO Auto-generated method stub
		return memberMapper.getIDEmailExists(mem_id, mem_email);
	}

	@Override
	public void changePW(String mem_id, String enc_pw) {
		// TODO Auto-generated method stub
		memberMapper.changePW(mem_id, enc_pw);
		
	}

	@Override
	public void modify(MemberVO vo) {
		// TODO Auto-generated method stub
		memberMapper.modify(vo);
	}

	@Override
	public void loginTimeUpdate(String mem_id) {
		// TODO Auto-generated method stub
		memberMapper.loginTimeUpdate(mem_id);
	}

	@Override
	public int getOrderTotalPrice(String mem_id) {
		// TODO Auto-generated method stub
		return memberMapper.getOrderTotalPrice(mem_id);
	}



}
