package com.situ.crm.mapper;

import com.situ.crm.entity.UserRole;

public interface UserRoleMapper {
    int insert(UserRole record);

    int insertSelective(UserRole record);

	int deleteByUserId(Long userId);
}