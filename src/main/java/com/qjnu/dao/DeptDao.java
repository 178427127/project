package com.qjnu.dao;

import java.util.List;

import com.qjnu.pojo.Dept;

public interface DeptDao {

	List<Dept> findall();

	Dept findbyid(Integer did);

	int insert(Dept dept);

	int del(Integer did);

	int upd(Dept dept);
}
