package com.qjnu.dao;

import java.util.List;
import java.util.Map;

import com.qjnu.pojo.Bankcard;

public interface BankcardDao {
	List<Bankcard> selectbc(Map<String, Object> map);
	int bankcount(Map<String, Object> map);
}
