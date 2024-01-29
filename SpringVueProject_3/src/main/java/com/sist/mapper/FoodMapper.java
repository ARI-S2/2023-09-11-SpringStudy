package com.sist.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Select;

import com.sist.dao.FoodVO;

public interface FoodMapper {
	@Select("select fno,name,poster,rownum from food_menu_house "
			+ "where address like '%'||#{address}||'%' "
			+ "and rownum <=20")
	public List<FoodVO> foodFindData(String address);
	
	@Select("select fno,name,poster,score,type,address,theme,price,time,seat "
			+"from food_menu_house where fno = #{fno}")
	public FoodVO foodDetailData(int fno);
	
	
}
