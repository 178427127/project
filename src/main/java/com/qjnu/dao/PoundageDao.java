package com.qjnu.dao;

import java.util.List;
import java.util.Map;

import com.qjnu.pojo.Poundage;


public interface PoundageDao {
	List<Poundage> selectpa(Map<String , Object> map);
	int poundcount(Map<String , Object> map);
	int insert(Poundage po);
}
