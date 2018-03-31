package com.situ.crm.service;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import com.situ.crm.common.DataGrideResult;
import com.situ.crm.common.ServerResponse;
import com.situ.crm.entity.User;

public interface IUserService {

	/**
	 * 返回datagride分页和搜索之后的数据
	 * @param page 第几页
	 * @param rows 每一个多少个
	 * @param user 封装搜索条件
	 * @return
	 */
	DataGrideResult pageList(Integer page, Integer rows, User user);

	ServerResponse delete(String ids);

	ServerResponse add(User user);

	ServerResponse update(User user);

	List<User> selectCustomerManagerList();
	
	List<Long> selectRoleIdByUserId(Long userId);

	ServerResponse login(String name, String password, HttpServletRequest request);

}
