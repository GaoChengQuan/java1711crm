package com.situ.crm.service.impl;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.situ.crm.common.DataGrideResult;
import com.situ.crm.common.ServerResponse;
import com.situ.crm.entity.DataDic;
import com.situ.crm.mapper.DataDicMapper;
import com.situ.crm.service.IDataDicService;
@Service
public class DataDicServiceImpl implements IDataDicService{
	@Autowired
	private DataDicMapper dataDicMapper;
	
	@Override
	public DataGrideResult<DataDic> pageList(Integer page, Integer rows, DataDic dataDic) {
		//1.设置分页
		PageHelper.startPage(page, rows);
		//2.执行查询(查询的是分页之后的数据)
		List<DataDic> list = dataDicMapper.pageList(dataDic);
		//3.得到满足条件的所有数据的数量，而上面的list是满足这个条件的某一页的数据
		PageInfo pageInfo = new PageInfo<>(list);
		Integer total = (int) pageInfo.getTotal();
		return new DataGrideResult<>(total, list);
	}

	@Override
	public ServerResponse delete(String ids) {
		String[] idsArray = ids.split(",");//[1,2,3]
		/*for (String id : idsArray) {
			dataDicMapper.deleteByPrimaryKey(Integer.parseInt(id));
		}
		return ServerResponse.createSUCCESS("删除成功");*/
		
		// delete from dataDic where id in (1,2,3);
		int count = dataDicMapper.deleteAll(idsArray);
		if (count == idsArray.length) {
			return ServerResponse.createSUCCESS("删除成功");
		}
		return ServerResponse.createERROR("删除失败");
	}

	@Override
	public ServerResponse add(DataDic dataDic) {
		int count = dataDicMapper.insert(dataDic);
		if (count > 0) {
			return ServerResponse.createSUCCESS("添加成功");
		}
		return ServerResponse.createERROR("添加失败");
	}
	
	@Override
	public ServerResponse update(DataDic dataDic) {
		int count = dataDicMapper.updateByPrimaryKey(dataDic);
		if (count > 0) {
			return ServerResponse.createSUCCESS("更新成功");
		}
		return ServerResponse.createERROR("更新失败");
	}

	@Override
	public List<DataDic> selectDataDicName1() {
		return dataDicMapper.selectDataDicName1();
	}

	@Override
	public List<Map<String, String>> selectDataDicName() {
		List<String> dataDicNames = dataDicMapper.selectDataDicName();
		List<Map<String, String>> list = new ArrayList<>();
		for (String dataDicName : dataDicNames) {
			Map<String, String> map = new HashMap<>();
			map.put("dataDicName", dataDicName);
			list.add(map);
		}
		return list;
	}
	
	

}
