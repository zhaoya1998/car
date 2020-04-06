package com.zhaoya.car.dao;

import java.util.List;

import com.zhaoya.car.domain.Car;
import com.zhaoya.car.domain.DriverType;

public interface CarMapper {

	int insert(Car record);

	public List<Car> selects();

	List<DriverType> selectTypes();

	List<Car> selectCarsByCode(String[] split);

}
