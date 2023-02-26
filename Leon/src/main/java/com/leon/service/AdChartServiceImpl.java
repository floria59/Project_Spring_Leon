package com.leon.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.leon.domain.ChartCartVO;
import com.leon.mapper.AdChartMapper;

import lombok.Setter;

@Service
public class AdChartServiceImpl implements AdChartService {
	
	@Setter(onMethod_ = {@Autowired})
	private AdChartMapper  adChartMapper;

	@Override
	public List<ChartCartVO> chartCartProductList() {
		// TODO Auto-generated method stub
		return adChartMapper.chartCartProductList();
	}

}
