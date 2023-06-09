package com.qjnu.service.impl;

import java.util.List;
import java.util.Map;

import com.qjnu.pojo.Certifrecord;
import com.qjnu.service.CertifrecordService;
import com.qjnu.dao.CertifrecordDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
@Transactional
public class CertifrecordServiceImpl implements CertifrecordService {
	@Autowired
	private CertifrecordDao certifrecordDao;

	@Override
	public List<Certifrecord> queryCertifrecord(Map<String, Object> map) {
		// TODO Auto-generated method stub
		List<Certifrecord> certifrecords = certifrecordDao.queryCertifrecord(map);
		return certifrecords;
	}

	@Override
	public int updateCertifrecord(Map<String, Object> map) {
		// TODO Auto-generated method stub
		return certifrecordDao.updateCertifrecord(map);
	}

	@Override
	public int addCertifrecord(Map<String, Object> map) {
		// TODO Auto-generated method stub
		return certifrecordDao.addCertifrecord(map);
	}

}
