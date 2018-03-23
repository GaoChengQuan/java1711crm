package com.situ.crm.service;

import com.situ.crm.common.DataGrideResult;
import com.situ.crm.common.ServerResponse;
import com.situ.crm.entity.Product;

public interface IProductService {

	/**
	 * 返回datagride分页和搜索之后的数据
	 * @param page 第几页
	 * @param rows 每一个多少个
	 * @param product 封装搜索条件
	 * @return
	 */
	DataGrideResult pageList(Integer page, Integer rows, Product product);

	ServerResponse delete(String ids);

	ServerResponse add(Product product);

	ServerResponse update(Product product);

}
