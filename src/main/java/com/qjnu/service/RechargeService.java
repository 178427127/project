package com.qjnu.service;

import java.util.List;
import java.util.Map;

import com.qjnu.pojo.Recharge;


public interface RechargeService {
	Map<String, Object> selectrc(String currpage,Map<String, Object> findmap);
	List<Recharge> selectall();
	int sumczmoneyre();
	int sumdzmoneyre();
}
