package com.qjnu.service;

import java.util.List;

import com.qjnu.pojo.Dept;

public interface DeptService {
	List<Dept> findall();

	Dept findbyid(Integer did);

	int insert(Dept dept);

	int del(Integer did);

	int upd(Dept dept);
}
