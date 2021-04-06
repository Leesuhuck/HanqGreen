package egovframework.example.haksaengStatus.web;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import egovframework.example.haksaengStatus.service.HaksaengStatusService;
import egovframework.example.user.service.UserService;
import egovframework.rte.psl.dataaccess.util.EgovMap;

@Controller
public class HaksaengStatusController {
	
	@Resource
	HaksaengStatusService haksaengStatusService;
	
	@Resource
	UserService userService;
	
	
	@RequestMapping(value = "/initHaksaengStatus.do")
	public String initHaksaengStatus(Model modelHaksaeng) throws Exception {
		
		List<EgovMap> haksaengStatusList = haksaengStatusService.selectHaksaengStatusServiceList();
		
		List<EgovMap> userList = userService.selectUserServiceList();
		
		modelHaksaeng.addAttribute("haksaengStatusList", haksaengStatusList);
		
		System.out.println(userList);
		
		return "haksaengStatus/haksaengStatus.tiles";
	}
	
	@RequestMapping(value = "/initHaksaengStatusChart.do")
	public String initHaksaengStatusChart() throws Exception {
		return "haksaengStatus/haksaengStatusChart.tiles";
	}
	
	@RequestMapping(value = "/initHaksaengStatusTable.do")
	public String initHaksaengStatusTable() throws Exception {
		return "haksaengStatus/haksaengStatusTable.tiles";
	}
}
