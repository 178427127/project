package com.qjnu.service;

import java.util.List;

import com.qjnu.pojo.Limi;

public interface LimitService {

	//根据员工ID查询该用户权限的模块
		public List limitByeid(int eid);
		//删除
		public boolean limitdel(Integer eid);
		//添加
		public boolean limitadd(Limi limi);
}
