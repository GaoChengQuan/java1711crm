package com.situ.crm.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.situ.crm.common.DataGrideResult;
import com.situ.crm.entity.User;
import com.situ.crm.mapper.UserMapper;
import com.situ.crm.service.IUserService;
@Service
public class UserServiceImpl implements IUserService{
	@Autowired
	private UserMapper userMapper;
	
	@Override
	public DataGrideResult pageList() {
		List<User> list = userMapper.pageList();
		return new DataGrideResult<>(list.size(), list);
	}

}
