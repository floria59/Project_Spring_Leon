package com.leon.service;

import java.util.List;

import com.leon.domain.ProductVO;
import com.leon.dto.Criteria;
import com.leon.domain.CategoryVO;

public interface ProductService {

	List<CategoryVO> getCategoryList();
	
	List<CategoryVO> getSubCategoryList(Integer cate_code);
	
	List<ProductVO> getProductListbysubCategory(Integer cate_code, Criteria cri);
	
	int getProductCountbysubCategory(Integer cate_code, Criteria cri);
	
	ProductVO getProductDetail(Integer pdt_num);
}
