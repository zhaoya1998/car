package com.zhaoya.car.service.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.zhaoya.car.dao.DriverMapper;
import com.zhaoya.car.domain.Driver;
import com.zhaoya.car.service.DriverService;



@Service
public class DriverServiceImpl implements DriverService {

	@Resource
	private DriverMapper mapper;
	
	@Override
	public Driver select(String phone, String password) {
		// TODO Auto-generated method stub
		
		Driver driver = mapper.select(phone, password);
		
		if(null == driver) {
			throw new RuntimeException("用户名或密码错误！");
		}
		
		return driver;
	}

	@Override
	public int insertSelective(Driver record) {
		// TODO Auto-generated method stub
		return mapper.insertSelective(record);
	}

}
