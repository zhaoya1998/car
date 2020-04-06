package com.zhaoya.car.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.zhaoya.car.domain.Driver;
import com.zhaoya.car.service.DriverService;



@Controller
public class PassportController {

	@Resource
	private DriverService service;
	//登录跳转
	@GetMapping("login")
	public String login() {
		return "login";
	}
	//登录
	@PostMapping("login")
	public String login(Model model, Driver driver, String phone, String password, HttpSession session) {
		
		try {
			Driver d = service.select(phone, password);
			
			session.setAttribute("driver", d);
			
			return "redirect:/driver/cars";
		} catch (RuntimeException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			model.addAttribute("message", e.getMessage());
		}
		
		catch (Exception e) {
			e.printStackTrace();
			
			model.addAttribute("message", "系统异常");
		}
		
		return "login";
	}
	//注册跳转
	@GetMapping("reg")
	public String reg() {
		return "reg";
	}
	//注册
	@ResponseBody
	@PostMapping("reg")
	public boolean reg(Model model, Driver driver) {
		return service.insertSelective(driver) > 0;
	}
}
