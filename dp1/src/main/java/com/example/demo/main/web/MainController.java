package com.example.demo.main.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MainController {

	@RequestMapping({"/main.do", "/"})
	public String mainInit() {		
		return "main-tiles";
	}
}