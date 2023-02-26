package com.leon.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ModelAttribute;

import com.leon.domain.CategoryVO;
import com.leon.service.ProductService;

import lombok.extern.log4j.Log4j;

/*
@ControllerAdvice : 공통모델작업과 Exception(예외처리) 에 사용된다. 
* 
com.leon.controller 패키지안의 존재하는 컨트롤러의 매핑주소 요청을 받으면,  categoryList 메서드가 자동으로 호출된다.
*/

@Log4j
@ControllerAdvice(basePackages = {"com.leon.controller"})
public class GlobalControllerAdvice {
	
	@Autowired
	private ProductService productService;
	
	// 1차 카테고리 목록을 읽어오는 작업
	@ModelAttribute
	public void categoryList(Model model) {
		
		log.info("1차 카테고리 정보");
		
		List<CategoryVO> cateList = productService.getCategoryList();
		model.addAttribute("mainCateList", cateList);
		
	}

}
