package com.leon.service;

import java.util.List;

import com.leon.dto.Criteria;
import com.leon.domain.ReviewVO;

public interface ReviewService {
	
	void create(ReviewVO vo);
	
	List<ReviewVO> list(Integer pdt_num, Criteria cri);
	
	int listCount(Integer pdt_num);
	
	int delete(Long rv_num);
	
	int update(ReviewVO vo);

}
