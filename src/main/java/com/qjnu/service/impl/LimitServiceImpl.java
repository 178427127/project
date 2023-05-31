package com.qjnu.service.impl;

import java.util.List;

import com.qjnu.pojo.Limi;
import com.qjnu.service.LimitService;
import com.qjnu.dao.LimitDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
@Service
@Transactional
public class LimitServiceImpl implements LimitService {
	
	@Autowired
	private LimitDao limitdao;
	
	public List limitByeid(int eid) {
		
		return limitdao.limitByeid(eid);
	}


	public boolean limitdel(Integer eid) {
		
		return limitdao.limitdel(eid);
	}

	public boolean limitadd(Limi limi) {
		
		return limitdao.limitadd(limi);
	}


}
