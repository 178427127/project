package com.qjnu.dao;

import java.util.List;
import java.util.Map;

import com.qjnu.pojo.InvestInfo;
import org.apache.ibatis.annotations.Param;

public interface InvestInfoDao extends BaseDao<Object, InvestInfo>{
	public List<InvestInfo> recordList(Map<String, Object> map);
	Double getSum(Map<String, Object> map);
	List<InvestInfo> getDtail(@Param("params") Map<String, InvestInfo> params);
	Integer getMoney(Integer uid);
}
