package com.zhaoya.car.service;

import com.zhaoya.car.domain.Driver;

public interface DriverService {

	Driver select(String phone, String password);

	int insertSelective(Driver record);

}
