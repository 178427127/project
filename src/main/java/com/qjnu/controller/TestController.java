package com.qjnu.controller;

import javax.annotation.Resource;

import com.qjnu.service.BidService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * 
 * @author lhs 2023年3月13日08:53:48 测试类
 */
@Controller
@RequestMapping("")
public class TestController {
	@Resource
	private BidService service;

	@RequestMapping("chuli")
	public String chuli(Model model) {
		service.chuli2();
		model.addAttribute("keyt", "标到期,处理成功!");
		return "test";
	}

	@RequestMapping("chuli2")
	public String chuli2(Model model) {
		service.chuli2();
		model.addAttribute("keyt", "未满标,处理成功!");

		return "test";
	}

}
