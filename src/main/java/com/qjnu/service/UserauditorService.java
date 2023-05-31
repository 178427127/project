package com.qjnu.service;

import java.util.List;
import java.util.Map;

import com.qjnu.pojo.Userauditor;

public interface UserauditorService {
		
	public List<Userauditor> queryUseraubitor(Map<String,Object> map);
	
	public int addUserauditor(Map<String, Object> map);
}
