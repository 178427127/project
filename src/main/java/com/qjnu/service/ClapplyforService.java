package com.qjnu.service;

import java.util.List;
import java.util.Map;

import com.qjnu.pojo.Clapplyfor;

public interface ClapplyforService {
	public List<Clapplyfor> queryClapplyfors(Map<String, Object> map);
	
	public int insertClapplyfor(Map<String, Object> map);
	
	public int updateClapplyforState(Map<String, Object> map);
}
