package com.leon.service;

import com.leon.domain.AdminVO;

public interface AdminService {

	AdminVO admin_ok(String admin_id);
	
	void login_update(String admin_id);
}
