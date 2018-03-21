package com.situ.crm.service;

import com.situ.crm.common.DataGrideResult;
import com.situ.crm.entity.Customer;

public interface ICustomerService {

	DataGrideResult<Customer> pageList();

}
