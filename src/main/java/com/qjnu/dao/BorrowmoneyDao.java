package com.qjnu.dao;

import java.util.List;
import java.util.Map;

import com.qjnu.pojo.Borrowmoney;

public interface BorrowmoneyDao extends BaseDao<Object, Borrowmoney> {
	// ygx
	public List<Borrowmoney> pagingList(Map<String, Object> map);
	
	//lhs  2023年3月2日09:42:30
	public void toaddborr(Borrowmoney borrowmoney);
	public List<Borrowmoney> updhuankuan();
	public Borrowmoney borrowget(Integer ids);
	//hjy
	List<Borrowmoney> selecthjy(Map<String, Object> map);
	int hjycount();
}