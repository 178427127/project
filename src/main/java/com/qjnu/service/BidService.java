package com.qjnu.service;

import java.util.List;

import com.qjnu.pojo.InvestInfo;
import com.qjnu.pojo.Product;

public interface BidService {

	public List<Product> todaoqi();
	public void upzt(Integer id);
	public List<InvestInfo> totouzilist(Integer id);
	
	
	public void chuli();
	public void chuli2();
	
	//-----------后台展示页面-----------//
	public Integer tosize();
	public Integer tosizew();
	public Integer tosizeb();


}
