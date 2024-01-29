package com.sist.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Select;

import com.sist.dao.FoodVO;

public interface FoodMapper {
	@Select("select fno,name,poster from food_menu_house where fno between 108 and 127"
			+ "order by fno")
	public List<FoodVO> foodListData();
	
	@Select("select fno,name,poster,score,type,address,theme,price,time,seat "
			+"from food_menu_house where fno = #{fno}")
	public FoodVO foodDetailData(int fno);
	
	
}
