package com.situ.crm.mapper;

import com.situ.crm.entity.RolePermission;

public interface RolePermissionMapper {
    int insert(RolePermission record);

    int insertSelective(RolePermission record);

	int deleteByRoleId(Long roleId);
}