package com.qjnu.service.impl;

import java.util.List;
import java.util.Map;

import com.qjnu.dao.UserauditorDao;
import com.qjnu.pojo.Userauditor;
import com.qjnu.service.UserauditorService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
@Service
@Transactional
public class UserauditorServiceImpl implements UserauditorService {
	
	@Autowired
	private UserauditorDao userauditorDao;
	
	@Override
	public List<Userauditor> queryUseraubitor(Map<String, Object> map) {
		// TODO Auto-generated method stub
		return userauditorDao.queryUserauditor(map);
	}

	@Override
	public int addUserauditor(Map<String, Object> map) {
		// TODO Auto-generated method stub
		return userauditorDao.addUserauditor(map);
	}

	
}
