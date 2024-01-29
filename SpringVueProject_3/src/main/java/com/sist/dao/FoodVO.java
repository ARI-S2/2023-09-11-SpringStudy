package com.sist.dao;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

import lombok.Data;

@Data
/*@JsonIgnoreProperties(ignoreUnknown = true)*/
public class FoodVO {
private int fno;
private double score;
private String poster,name,type,address,phone,theme,price,time,seat;

}
