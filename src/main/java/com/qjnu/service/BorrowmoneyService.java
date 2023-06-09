package com.qjnu.service;

import java.util.List;
import java.util.Map;

import com.qjnu.pojo.Borrowmoney;

import com.github.pagehelper.PageInfo;

public interface BorrowmoneyService {

	public List<Borrowmoney> findList(Map<String, Object> map);

	PageInfo<Borrowmoney> findList(Borrowmoney Borrowmoney, Integer pageNo, Integer pageSize);

	int delete(Integer id);

	int create(Borrowmoney record);

	Borrowmoney get(Integer id);

	int update(Borrowmoney record);

	/*
	 * ygx 2023 2 25 效仿陈庆山分页
	 */
	public List<Borrowmoney> pagingSel(Map<String, Object> map);
	/*
	 * zq 2023年3月3日10:40:48 
	 */
	public void toaddborr(Borrowmoney borrowmoney);
	public List<Borrowmoney> updhuankuan();
	public Borrowmoney borrowget(Integer ids);

	
	/**
	 * hjy
	 */
	Map<String, Object> selecthjy(String currpage);
}