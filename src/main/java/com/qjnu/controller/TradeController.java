package com.qjnu.controller;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import com.qjnu.service.TradeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping("td")
public class TradeController {
	String str = "WEB-INF/view/";
	@Autowired
	private TradeService td;

	
	@RequestMapping("trade")
	public String  bankcard(Model m ,@RequestParam(value = "currpage", required = false) String currpage
			,@RequestParam(value = "uname", required = false) String uname
			,@RequestParam(value = "zname", required = false) String zname
			,@RequestParam(value = "yyy", required = false) String yyy
			,@RequestParam(value = "yyyy", required = false) String yyyy,HttpServletRequest req){
		HttpSession session = req.getSession();
		session.setAttribute("uname", uname);
		session.setAttribute("zname", zname);
		session.setAttribute("yyy", yyy);
		session.setAttribute("yyyy", yyyy);
		Map<String, Object> findmap = new HashMap<String, Object>();
		findmap.put("uname", uname);
		findmap.put("yyy", yyy);
		findmap.put("yyyy", yyyy);
		findmap.put("zname", zname);
		Map<String, Object> bc = td.selecttd(currpage, findmap);
		m.addAttribute("lts", bc.get("lt"));
		m.addAttribute("pagerow", bc.get("pagerow"));
		m.addAttribute("currpages", bc.get("currpages"));
		m.addAttribute("totalpage", bc.get("totalpage"));
		m.addAttribute("totalrow", bc.get("totalrow"));
		return str+"Tradelist";
	}
}
