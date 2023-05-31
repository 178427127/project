package com.qjnu.dao;

import java.util.List;

import com.qjnu.pojo.Borrowcord;

public interface BorrowcordDao {
	
	public List<Borrowcord> selborr (Integer wid);
	
	
	public void updborr (Integer wid);
	
	
	public void borradd (Borrowcord borrowcord);

	
}
