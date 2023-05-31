package com.qjnu.service.impl;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import com.qjnu.pojo.Dope;
import com.qjnu.service.DopeService;
import com.qjnu.dao.DopeDao;
import org.springframework.stereotype.Service;
@Service
public class DopeServiceImpl implements DopeService {
	@Resource
	private DopeDao dop;
	@Override
	public int insert(Dope dope) {
		// TODO Auto-generated method stub
		return dop.insert(dope);
	}
	@Override
	public List<Dope> findDope(Map<String, Object> map) {
		List<Dope> list=dop.findDope(map);
		return list;
	}
	@Override
	public List total() {
		List list=dop.total();
		return list;
	}
	@Override
	public void batchDeletes(Integer did) {
		dop.batchDeletes(did);
	}

}
