package com.qjnu.controller;

import com.qjnu.service.LoggerService;
import com.qjnu.util.LogUtils;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;

public class BaseController extends LogUtils {
	@Autowired
	private LoggerService service;

	protected Logger logger = Logger.getLogger(this.getClass());
	private static final long serialVersionUID = 6357869213649815390L;

	/**
	 * 得到分页列表的信息
	 */

	public static void logBefore(Logger logger, String interfaceName) {
		logger.info("");
		logger.info("日志开始------------------------");
		logger.info(interfaceName);
	}

	public static void logAfter(Logger logger) {
		logger.info("日志结束---------------------------");
		logger.info("");
	}

}
