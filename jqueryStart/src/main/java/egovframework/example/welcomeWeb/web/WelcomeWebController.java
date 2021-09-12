package egovframework.example.welcomeWeb.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class WelcomeWebController {
	
	@RequestMapping("/welcomeWeb.do")
	public String welcomeWebInit() throws Exception {
		return "welcomeWeb/welcomeWeb.tiles";
	}
}
