package com.zhaoya.car.controller;

import java.io.File;
import java.io.IOException;
import java.util.Date;
import java.util.List;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.github.pagehelper.PageInfo;
import com.zhaoya.car.domain.Car;
import com.zhaoya.car.domain.DriverType;
import com.zhaoya.car.service.CarService;

@Controller
public class CarController {

	@Autowired
	private CarService service;
	//添加跳转
	@GetMapping("add")
	public String add() {
		return "car_add";
	}
	//添加汽车
	@ResponseBody
	@PostMapping("add")
	public boolean add(HttpServletRequest request, Car car, MultipartFile file) {
		
		if(!file.isEmpty()) {
			
			String path = request.getSession().getServletContext().getRealPath("/resource/pic/");
			
			String oldFilename = file.getOriginalFilename();
			
			String newFilename = UUID.randomUUID() + oldFilename.substring(oldFilename.lastIndexOf("."));
			
			File f = new File(path, newFilename);
			
			try {
				file.transferTo(f);
				
				car.setPicUrl(newFilename);
			} catch (IllegalStateException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		
		car.setCreated(new Date());
		
		return service.insert(car) > 0;
	}
	//查询
	@GetMapping(value = {"","/","index"})
	public String cars(Model model, @RequestParam(defaultValue = "1") Integer page, @RequestParam(defaultValue = "8")Integer pageSize) {
		
		PageInfo<Car> info = service.selects(page, pageSize);
		
		model.addAttribute("info", info);
		
		return "index";
	}
	//类型查询
	@ResponseBody
	@GetMapping("selectTypes")
	public List<DriverType> selectTypes(){
		return service.selectTypes();
	}
}
