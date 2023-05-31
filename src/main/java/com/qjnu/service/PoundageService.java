package com.qjnu.service;

import java.util.List;
import java.util.Map;

import com.qjnu.pojo.Poundage;


public interface PoundageService {
	Map<String, Object> selectpa(String currpge,Map<String, Object> findmap);
	List<Poundage> findList(Map<String, Object> map);
	int insert(Poundage po);
}
