package com.leon.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.leon.domain.ReviewVO;
import com.leon.dto.Criteria;
import com.leon.mapper.ReviewMapper;

import lombok.Setter;

@Service
public class ReviewServiceImpl implements ReviewService {
	
	@Setter(onMethod_ = {@Autowired})
	private ReviewMapper reviewMapper;

	@Override
	public void create(ReviewVO vo) {
		// TODO Auto-generated method stub
		reviewMapper.create(vo);
		
	}

	@Override
	public List<ReviewVO> list(Integer pdt_num, Criteria cri) {
		// TODO Auto-generated method stub
		return reviewMapper.list(pdt_num, cri);
	}

	@Override
	public int listCount(Integer pdt_num) {
		// TODO Auto-generated method stub
		return reviewMapper.listCount(pdt_num);
	}

	@Override
	public int delete(Long rv_num) {
		// TODO Auto-generated method stub
		return reviewMapper.delete(rv_num);
	}

	@Override
	public int update(ReviewVO vo) {
		// TODO Auto-generated method stub
		return reviewMapper.update(vo);
	}

}
