package egovframework.example.haksaengStatus.web;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import egovframework.example.haksaengStatus.chart.service.HaksaengStatusChartService;
import egovframework.example.haksaengStatus.service.HaksaengStatusService;
import egovframework.example.user.service.UserService;
import egovframework.rte.psl.dataaccess.util.EgovMap;

@Controller
public class HaksaengStatusController {
	
	@Resource
	HaksaengStatusService haksaengStatusService;
	
	@Resource
	HaksaengStatusChartService haksaengStatusChartService;
	
	@Resource
	UserService userService;

	private String move;
	
	
	@RequestMapping(value = "/initHaksaengStatus.do")
	public String initHaksaengStatus(Model modelHaksaeng) throws Exception {
		
		List<EgovMap> haksaengStatusList = haksaengStatusService.selectHaksaengStatusServiceList();
		List<EgovMap> haksaengStatusChartList = haksaengStatusChartService.selecthaksaengStatusChartServiceList();
		List<EgovMap> userList = userService.selectUserServiceList();
		
		modelHaksaeng.addAttribute("haksaengStatusList", haksaengStatusList);
		modelHaksaeng.addAttribute("haksaengStatusChartList", haksaengStatusChartList);
		
		System.out.println(haksaengStatusChartList);
		
		return "haksaengStatus/haksaengStatus.tiles";
	}
	/*
	@RequestMapping(value = "/initHaksaengStatusChart.do")
	public String initHaksaengStatusChart(HttpServletRequest req,Model modelChart) throws Exception {
		
		System.out.println(req.getParameter("pageName"));
		
		
		List<EgovMap> haksaengStatusChartList = haksaengStatusChartService.selecthaksaengStatusChartServiceList();
		modelChart.addAttribute("haksaengStatusChartList", haksaengStatusChartList);
		
		return "haksaengStatus/haksaengStatusChart.tiles";
	}
	
	@RequestMapping(value = "/initHaksaengStatusTable.do")
	public String initHaksaengStatusTable(Model modelTable) throws Exception {
		
		List<EgovMap> haksaengStatusList = haksaengStatusService.selectHaksaengStatusServiceList();
		modelTable.addAttribute("haksaengStatusList", haksaengStatusList);
		
		return "haksaengStatus/haksaengStatusTable.tiles";
	}
	*/
	@RequestMapping(value = "/oneLove.do")
	public String initoneLove(HttpServletRequest req,Model modelChart, Model modelTable) throws Exception {

		if (req.getParameter("pageName").equals("initHaksaengStatusChart")) {
			
			List<EgovMap> haksaengStatusChartList = haksaengStatusChartService.selecthaksaengStatusChartServiceList();
			modelChart.addAttribute("haksaengStatusChartList", haksaengStatusChartList);
			
			this.move = "haksaengStatus/haksaengStatusChart.tiles";
			System.out.println(this.move);
			
		}
		
		else if (req.getParameter("pageName").equals("initHaksaengStatusTable")) {
			
			List<EgovMap> haksaengStatusList = haksaengStatusService.selectHaksaengStatusServiceList();
			modelTable.addAttribute("haksaengStatusList", haksaengStatusList);
			
			this.move = "haksaengStatus/haksaengStatusTable.tiles";
			System.out.println(this.move);
			
		}

		return move;
	}
}
