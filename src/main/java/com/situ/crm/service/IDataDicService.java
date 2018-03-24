package com.situ.crm.service;

import java.util.List;

import com.situ.crm.common.DataGrideResult;
import com.situ.crm.common.ServerResponse;
import com.situ.crm.entity.DataDic;

public interface IDataDicService {

	/**
	 * 返回datagride分页和搜索之后的数据
	 * @param page 第几页
	 * @param rows 每一个多少个
	 * @param dataDic 封装搜索条件
	 * @return
	 */
	DataGrideResult pageList(Integer page, Integer rows, DataDic dataDic);

	ServerResponse delete(String ids);

	ServerResponse add(DataDic dataDic);

	ServerResponse update(DataDic dataDic);

	List<DataDic> selectDataDicName();

}
