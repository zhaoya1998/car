package com.zhaoya.car.dao;

import org.apache.ibatis.annotations.Param;

import com.zhaoya.car.domain.Driver;


public interface DriverMapper {

	Driver select(@Param("phone") String phone, @Param("password") String password);

	int insertSelective(Driver record);

}
