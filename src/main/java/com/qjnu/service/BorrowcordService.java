package com.qjnu.service;

import java.util.List;

import com.qjnu.pojo.Borrowcord;

public interface BorrowcordService {
	public List<Borrowcord> selborr(Integer wid);

	public void updborr(Integer wid);

	public void borradd(String yss, Integer beyid, String fangshi);
}
