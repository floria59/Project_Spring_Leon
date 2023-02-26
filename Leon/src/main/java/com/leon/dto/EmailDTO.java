package com.leon.dto;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
@AllArgsConstructor
public class EmailDTO {
	
		private String senderName;		// 발신자 이름
		private String senderMail;		// 발신자 메일주소
		private String receiverMail;	// 수신자 메일주소 > 회원메일 주소로 사용
		private String subject;			// 제목
		private String message;			// 본문
		
		public EmailDTO() {
			this.senderName = "Leon";
			this.senderMail = "Leon";
			this.subject = "Leon 회원가입 메일 인증 코드입니다.";
			this.message = "이메일 인증을 위한 인증코드를 확인하시고, 회원가입 인증코드 입력난에 입력하세요.";
		}

}
