package com.qjnu.dao;

import java.util.List;
import java.util.Map;

import com.qjnu.pojo.Borrowmoney;
import com.qjnu.pojo.Creditlimit;

public interface CreditlimitDao extends BaseDao<Object, Borrowmoney> {

	public List<Creditlimit> queryCreditlimits(Map<String, Object> map);
	
	public int insertCreditlimit(Map<String, Object> map);
	public int updateCreditlimit(Map<String, Object> map);

}
