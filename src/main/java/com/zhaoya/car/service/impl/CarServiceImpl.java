package com.zhaoya.car.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.zhaoya.car.dao.CarMapper;
import com.zhaoya.car.domain.Car;
import com.zhaoya.car.domain.Driver;
import com.zhaoya.car.domain.DriverType;
import com.zhaoya.car.service.CarService;


@Service
public class CarServiceImpl implements CarService {

	@Resource
	private CarMapper mapper;
	
	@Override
	public int insert(Car record) {
		// TODO Auto-generated method stub
		return mapper.insert(record);
	}

	@Override
	public PageInfo<Car> selects(Integer page, Integer pageSize) {
		// TODO Auto-generated method stub
		PageHelper.startPage(page, pageSize);
		
		List<Car> list = mapper.selects();
		
		return new PageInfo<Car>(list);
	}

	@Override
	public List<DriverType> selectTypes() {
		// TODO Auto-generated method stub
		return mapper.selectTypes();
	}

	@Override
	public PageInfo<Car> selectCarsByCode(Driver driver, Integer page, Integer pageSize) {
		// TODO Auto-generated method stub
		String include = driver.getDriverType().getInclude();
		
		String code = driver.getDriverType().getCode();
		
		if(null != include && !include.equals("")) {
			code += ","+include;
		}
		
		PageHelper.startPage(page, pageSize);
		
		List<Car> list = mapper.selectCarsByCode(code.split(","));
		
		return new PageInfo<Car>(list);
	}

}
