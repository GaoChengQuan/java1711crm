package com.situ.crm.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.situ.crm.entity.Customer;
import com.situ.crm.entity.CustomerLoss;
import com.situ.crm.entity.CustomerOrder;
import com.situ.crm.mapper.CustomerLossMapper;
import com.situ.crm.mapper.CustomerMapper;
import com.situ.crm.mapper.CustomerOrderMapper;
import com.situ.crm.service.ICustomerLossService;

@Service
public class CustomerLossServiceImpl implements ICustomerLossService{
	@Autowired
	private CustomerMapper customerMapper;
	@Autowired
	private CustomerOrderMapper customerOrderMapper;
	@Autowired
	private CustomerLossMapper customerLossMapper;

	@Override
	public void checkCustomerLoss() {
		System.out.println("CustomerLossServiceImpl.checkCustomerLoss()");
		//1.查找所有流失的客户
		List<Customer> customerList = customerMapper.findCustomerLoss();
		for (Customer customer : customerList) {
			//2.实例化客户流失对象
			CustomerLoss customerLoss = new CustomerLoss();
			customerLoss.setCustomerNo(customer.getNum());//客户编号
			customerLoss.setCustomerName(customer.getName());//客户名称
			customerLoss.setCustomerManager(customer.getManagerName());//客户经理
			//查找这个客户最后一次的订单信息
			CustomerOrder customerOrder = customerOrderMapper.findLastOrderByCustomerId(customer.getId());
			if (customerOrder != null) {
				customerLoss.setLastOrderTime(customerOrder.getOrderDate());//客户最后一次订单时间
			} else {
				customerLoss.setLastOrderTime(null);
			}
			
			//3.添加到客户流失表里面
			customerLossMapper.insert(customerLoss);
			//4.客户表里面把客户状态修改为1：流失状态
			customer.setStatus(1);
			customerMapper.updateByPrimaryKeySelective(customer);
		}
	}
}
