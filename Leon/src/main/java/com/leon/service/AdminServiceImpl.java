package com.leon.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.leon.domain.AdminVO;
import com.leon.mapper.AdminMapper;

import lombok.Setter;

@Service
public class AdminServiceImpl implements AdminService {

	//mapper주입
	@Setter(onMethod_ = {@Autowired})
	private AdminMapper adminMapper;

	@Override
	public AdminVO admin_ok(String admin_id) {
		// TODO Auto-generated method stub
		return adminMapper.admin_ok(admin_id);
	}

	@Override
	public void login_update(String admin_id) {
		// TODO Auto-generated method stub
		adminMapper.login_update(admin_id);
	}
}
