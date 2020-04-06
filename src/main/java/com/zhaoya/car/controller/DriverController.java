package com.zhaoya.car.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.github.pagehelper.PageInfo;
import com.zhaoya.car.domain.Car;
import com.zhaoya.car.domain.Driver;
import com.zhaoya.car.service.CarService;

@RequestMapping("driver")
@Controller
public class DriverController {

	@Resource
	private CarService service;
	
	//根据用户驾照类型查询
	@GetMapping("cars")
	public String cars(HttpServletRequest request, @RequestParam(defaultValue = "1")Integer page, @RequestParam(defaultValue = "8")Integer pageSize) {
		
		HttpSession session = request.getSession();
		
		Driver driver = (Driver) session.getAttribute("driver");
		
		PageInfo<Car> info = service.selectCarsByCode(driver, page, pageSize);
		
		request.setAttribute("info", info);
		
		return "cars";
	}
	
}
