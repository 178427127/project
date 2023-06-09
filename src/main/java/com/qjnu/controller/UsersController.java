package com.qjnu.controller;

import java.util.Enumeration;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import com.qjnu.pojo.Certification;
import com.qjnu.pojo.Users;
import com.qjnu.service.CertificationService;
import com.qjnu.service.UsersService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping("users")
public class UsersController {

	@Autowired
	private UsersService usersservice;
	@Autowired
	
	@Resource
	private CertificationService Certificat;

	@RequestMapping("list")
	public String list(Model model, Users users,
                       @RequestParam(value = "currpage", required = false) String currpage,
                       @RequestParam(value = "unickname", required = false) String unickname) {
		// 查询所有
		int pagerow = 6;// 每页5行
		int currpages = 1;// 当前页
		int totalpage = 0;// 总页数
		int totalrow = 0;// 总行数
		Map<String, Object> parameters = new HashMap<String, Object>();
		totalrow = usersservice.userList().size();//获取总行数
		
		if (currpage != null && !"".equals(currpage)) {
			currpages = Integer.parseInt(currpage);
		}
		totalpage = (totalrow + pagerow - 1) / pagerow;

		if (currpages < 1) {
			currpages = 1;
		}
		if (currpages > totalpage) {
			currpages = totalpage;
		}
		Integer candp = (currpages - 1) * pagerow;
		parameters.put("pandc", pagerow);
		parameters.put("candp", candp);
		List<Users> ulist = usersservice.queryUserslimits(parameters);
		if (unickname!=null) {
			ulist=usersservice.queryUserslimits(unickname);
			model.addAttribute("sta",1);
			
		}
		if (ulist.size()==0) {
			model.addAttribute("stas",1);
		}else{
			model.addAttribute("stas",0);
		}
		model.addAttribute("ulist", ulist);
		model.addAttribute("totalrow", totalrow);
		model.addAttribute("currpage", currpages);
		model.addAttribute("totalpage", totalpage);

		return "WEB-INF/view/bk_userslist";
	}

	// 注册新用户 start
	@RequestMapping("insert")
	public String insert(Users users, Model model,
			@RequestParam(value = "unickname", required = false) String unickname,
			@RequestParam(value = "upassword", required = false) String upassword,
			@RequestParam(value = "uphonenumber", required = false) String uphonenumber) {

		users.setUnickname(unickname);
		users.setUpassword(upassword);
		users.setUphonenumber(uphonenumber);
		// 将数据添加到数据库
		usersservice.insert(users);//users.getUid()
		Certification cer = new Certification();
		cer.setCserial(users.getUid()+"");
		cer.setCbalance("0");
		cer.setCusername("1");
		cer.setCrealname("1");
		cer.setCfreeze("0");
		cer.setCdue("0");
		cer.setCpaid("0");
		cer.setCtotalmoney("0");
		Certificat.insert(cer);
		model.addAttribute("unickname", unickname);
		// 返回到注册成功界面
		return "register1";
	}
	// 注册新用户 end

	// 登录 start
	@RequestMapping("login")
	public String login(Model model, HttpSession session,
			@RequestParam(value = "unickname", required = false) String unickname,
			@RequestParam(value = "upassword", required = false) String upassword) {

		String status;
		// 根据账号查询 是否为null进行判断
		System.out.println(unickname + "-----------------" + upassword);
		Users user = usersservice.byNameFindUsers(unickname, upassword);

		if (user == null) {
			// 登录失败
			status = "账号或密码有误";
			model.addAttribute("status", status);
			return "login";
		} else {
			// 登录成功

			model.addAttribute("users", user);
			// 将登入信息保存到session中
			session.setAttribute("globaluser", user);
			return "index";
		}
	}
	// 登录 end

	// 退出start
	@RequestMapping("exit")
	public String exit(HttpSession session) {

		Enumeration em = session.getAttributeNames();
		while (em.hasMoreElements()) {
			session.removeAttribute(em.nextElement().toString());
		}
		return "index";
	}

	// 退出end
	@RequestMapping("findByName")
	@ResponseBody
	public int findByName(@RequestParam(value = "unickname", required = false) String unickname){
		System.out.println("unickname"+unickname);
		List<Users> ulist = usersservice.queryUserslimits(unickname);
		if(ulist.size()>0){
			return 2;
		}else{
			return 1;
		}
	}

}
