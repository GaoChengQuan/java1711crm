package com.situ.crm.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.situ.crm.common.DataGrideResult;
import com.situ.crm.common.ServerResponse;
import com.situ.crm.entity.User;
import com.situ.crm.service.IUserService;

@Controller
@RequestMapping("/user")
public class UserController {
	@Autowired
	private IUserService userService;

	@RequestMapping("/index")
	public String index() {
		return "user_index";
	}
	
	@RequestMapping("/pageList")
	@ResponseBody
	public DataGrideResult pageList(Integer page, Integer rows, User user) {
		return userService.pageList(page, rows, user);
	}
	
	@RequestMapping("/delete")
	@ResponseBody
	public ServerResponse delete(String ids) {
		return userService.delete(ids);
	}
	
	@RequestMapping("/add")
	@ResponseBody
	public ServerResponse add(User user) {
		return userService.add(user);
	}
	
	@RequestMapping("/update")
	@ResponseBody
	public ServerResponse update(User user) {
		return userService.update(user);
	}
	
	@RequestMapping("/selectCustomerManagerList")
	@ResponseBody
	public List<User> selectCustomerManagerList() {
		return userService.selectCustomerManagerList();
	}
	
	@RequestMapping("/selectRoleIdByUserId")
	@ResponseBody
	public List<Long> selectRoleIdByUserId(Long userId) {
		return userService.selectRoleIdByUserId(userId);
	}
	
	@RequestMapping("/login")
	@ResponseBody
	public ServerResponse login(String name, String password, HttpServletRequest request) {
		return userService.login(name, password, request);
	}
	
	@RequestMapping("/getLoginPage")
	public String getLoginPage() {
		return "login";
	}
}
