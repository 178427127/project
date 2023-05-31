package com.qjnu.service.impl;

import java.util.List;

import javax.annotation.Resource;

import com.qjnu.pojo.Details;
import com.qjnu.service.DetailsService;
import com.qjnu.dao.DetailsDao;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

/**
 * 
 * @author lhs 网站消息通告 控制层
 *
 */
@Service
@Transactional
public class DetailsServiceImpl implements DetailsService {

	@Resource
	private DetailsDao detailsDao;
	

	@Override
	public List<Details> detailslist(Integer pid) {
		return detailsDao.detailslist(pid);
	}

	@Override
	public int delete(Integer id) {
		// TODO Auto-generated method stub
		return detailsDao.delete(id);
	}

	@Override
	public int create(Details details) {
		// TODO;
		return detailsDao.create(details);
	}

	@Override
	public Details get(Integer id) {
		// TODO Auto-generated method stub
		return detailsDao.get(id);
	}

	@Override
	public int update(Details record) {
		// TODO Auto-generated method stub
		return 0;
	}
	@Override
	public void deleteByPid(Integer pid) {
		// TODO Auto-generated method stub
		 detailsDao.deleteByPid(pid);
	}
}
