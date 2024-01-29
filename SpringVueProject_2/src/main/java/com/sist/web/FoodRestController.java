package com.sist.web;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.sist.dao.FoodDAO;
import com.sist.dao.FoodVO;

@RestController
public class FoodRestController {
	@Autowired
	private FoodDAO dao;
	
	@GetMapping(value="food/list_vue.do",produces="text/plain;charset=UTF-8")
	public String food_list_vue() throws Exception{
		List<FoodVO> list = dao.foodListData();
		ObjectMapper mapper = new ObjectMapper(); // 자동 json 변환 클래스
		String json = mapper.writeValueAsString(list); // 자동 json 변환 메소드
		return json;
	}
	
	@GetMapping(value="food/detail_vue.do",produces="text/plain;charset=UTF-8")
	public String food_detail_vue(int fno) throws Exception{
		FoodVO vo = dao.foodDetailData(fno);
		ObjectMapper mapper = new ObjectMapper(); // 자동 json 변환 클래스
		String json = mapper.writeValueAsString(vo	); // 자동 json 변환 메소드
		return json;
	}
}
