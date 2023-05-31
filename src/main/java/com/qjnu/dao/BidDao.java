package com.qjnu.dao;

import java.util.List;
import java.util.Map;

import com.qjnu.pojo.Borrowcord;
import com.qjnu.pojo.Borrowmoney;
import com.qjnu.pojo.Certification;
import com.qjnu.pojo.InvestInfo;
import com.qjnu.pojo.Product;
import com.qjnu.pojo.Trade;
import com.qjnu.pojo.Users;
import com.qjnu.pojo.Withdrawal;

public interface BidDao {

	public List<Product> todaoqi();

	public void upzt(Integer id);

	public List<InvestInfo> totouzilist(Integer id);
	
	public Users seluesr(Integer uid);
	

	// ------------项目到期----------------//
	
	public Certification togetyue(Integer uID);

	public void toupyue(Map<String, String> map);

	public void toaddtrade(Trade trade);
	
	// ------------筹款到期----------------//
	
	public List<Product> togetck();
	
	public void upzts(Integer id);
	
	// ------------首页展示信息----------------//
	
	public List<Borrowmoney> tosize();
	public List<Withdrawal> tosizew();
	public List<Borrowcord> tosizeb();

}