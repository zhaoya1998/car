package com.zhaoya.car.service;

import java.util.List;

import com.github.pagehelper.PageInfo;
import com.zhaoya.car.domain.Car;
import com.zhaoya.car.domain.Driver;
import com.zhaoya.car.domain.DriverType;


public interface CarService {

	int insert(Car record);

	PageInfo<Car> selects(Integer page, Integer pageSize);

	List<DriverType> selectTypes();

	PageInfo<Car> selectCarsByCode(Driver driver, Integer page, Integer pageSize);

}
