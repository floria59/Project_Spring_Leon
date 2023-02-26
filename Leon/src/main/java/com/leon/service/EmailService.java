package com.leon.service;

import com.leon.dto.EmailDTO;

public interface EmailService {
	
	void sendMail(EmailDTO dto, String message);

}
