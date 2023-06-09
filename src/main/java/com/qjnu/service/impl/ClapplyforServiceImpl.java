package com.qjnu.service.impl;

import java.util.List;
import java.util.Map;

import com.qjnu.pojo.Clapplyfor;
import com.qjnu.service.ClapplyforService;
import com.qjnu.dao.ClapplyforDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
@Service
@Transactional
public class ClapplyforServiceImpl implements ClapplyforService {
	@Autowired
	private ClapplyforDao clapplyforDao;

	@Override
	public List<Clapplyfor> queryClapplyfors(Map<String, Object> map) {
		// TODO Auto-generated method stub
		return clapplyforDao.queryClapplyfors(map);
	}

	@Override
	public int insertClapplyfor(Map<String, Object> map) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int updateClapplyforState(Map<String, Object> map) {
		// TODO Auto-generated method stub
		return clapplyforDao.updateClapplyforState(map);
	}

}
