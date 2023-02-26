package com.leon.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.leon.domain.CategoryVO;
import com.leon.domain.ProductVO;
import com.leon.dto.Criteria;

public interface AdProductMapper {
	
	// 작업 1. 1차 카테고리 목록
	List<CategoryVO> getCategoryList();
	
	// 작업 2. 1차 카테고리를 참조하는 2차 카테고리 목록
	List<CategoryVO> getSubCategoryList(Integer cate_code);
	
	// 작업 3. 상품정보 저장
	void productInsert(ProductVO vo);
	
	// 작업 4-1. 상품목록
	List<ProductVO> getProductList(Criteria cri);
	
	// 작업 4-2. 상품개수
	int getProductTotalCount(Criteria cri);
	
	// 작업 5. 상품수정정보
	ProductVO getProductByNum(Integer pdt_num);
	
	// 작업 6. 상품수정하기
	void productModify(ProductVO vo);
	
	// 작업 7. 상품삭제하기
	void productDelete(Integer pdt_num);
		
	// 작업 8. 상품 판매여부
	void btnSalesYN(@Param("pdt_num") Integer pdt_num, @Param("pdt_buy") String pdt_buy);

}
