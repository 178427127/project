package com.qjnu.dao;

import java.util.List;
import java.util.Map;

import com.qjnu.pojo.Userauditor;

public interface UserauditorDao {
	
	public  List<Userauditor> queryUserauditor(Map<String, Object> map);
	
	public int addUserauditor(Map<String, Object> map);

}
