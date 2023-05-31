package com.qjnu.service.impl;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import com.qjnu.pojo.InvestInfo;
import com.qjnu.service.InvestService;
import com.qjnu.dao.InvestInfoDao;
import org.springframework.stereotype.Service;

@Service
public class InvestServiceImpl implements InvestService {

	@Resource
	private InvestInfoDao iid;

	public int investA(InvestInfo ii) {

		return iid.create(ii);
	}

	public List<InvestInfo> investS(Map<String, Object> map) {

		return iid.recordList(map);
	}

	@Override
	public List<InvestInfo> getDtail(Map<String, InvestInfo> map) {
		// TODO Auto-generated method stub
		return iid.getDtail(map);
	}

	@Override
	public Double sumMoney(Map<String, Object> map) {
		return iid.getSum(map);
	}

	@Override
	public Integer getMoney(Integer uid) {
		return iid.getMoney(uid);
	}

}
