package com.leon.service;

import java.util.List;

import com.leon.dto.Criteria;
import com.leon.domain.CategoryVO;
import com.leon.domain.ProductVO;

public interface AdProductService {
	
	List<CategoryVO> getCategoryList();
	
	List<CategoryVO> getSubCategoryList(Integer cate_code);
	
	void productInsert(ProductVO vo);
	
	//상품목록
	List<ProductVO> getProductList(Criteria cri);
		
	//상품개수
	int getProductTotalCount(Criteria cri);
	
	ProductVO getProductByNum(Integer pdt_num);
	
	void productModify(ProductVO vo);
	
	void productDelete(Integer pdt_num);
	
	void btnSalesYN(Integer pdt_num, String pdt_buy);

}
