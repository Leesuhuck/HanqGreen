package egovframework.example.haksaengStatus.web;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import egovframework.example.haksaengStatus.chart.service.HaksaengStatusChartService;
import egovframework.example.haksaengStatus.service.HaksaengStatusService;
import egovframework.example.haksaengStatus.service.HaksaengStatusVO;
import egovframework.example.haksaengStatus.test.service.HaksaengStatusTestTableService;
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
	
	@Resource
	HaksaengStatusTestTableService haksaengStatusTestTableService;

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

	@RequestMapping(value = "/oneLove.do")
	public String initoneLove(HttpServletRequest req, Model modelChart, Model modelTable) throws Exception {

		if (req.getParameter("pageName").equals("initHaksaengStatusChart")) {
		
			List<EgovMap> haksaengStatusChartList = haksaengStatusChartService.selecthaksaengStatusChartServiceList();
			
			modelChart.addAttribute("haksaengStatusChartList", haksaengStatusChartList);
			
			this.move = "haksaengStatus/haksaengStatusChart.tiles";
			System.out.println(this.move);
			
		}
		
		else if (req.getParameter("pageName").equals("initHaksaengStatusTable")) {
			
			EgovMap egovMap = new EgovMap();
			
			egovMap.put("userNm", req.getParameter("tName"));
			egovMap.put("cafeNick", "한큐");
			
			List<EgovMap> haksaengStatusList = haksaengStatusService.selectHaksaengStatusServiceList(egovMap);
			
			modelTable.addAttribute("haksaengStatusList", haksaengStatusList);

			this.move = "haksaengStatus/haksaengStatusTable.tiles";
			System.out.println(req.getParameter("tName"));
			System.out.println(this.move);
			
		}
		
		return move;
	}
	
	@RequestMapping(value="/testServerList.do")
	public String initTestview(HttpServletRequest hSP, Model mdTest) throws Exception {
		System.out.println(hSP.getParameter("pageName"));
		
		if (hSP.getParameter("pageName").equals("initHaksaengStatusTestTable")) {
			System.out.println(hSP.getParameter("testNm"));
			
			EgovMap mapTest = new EgovMap();
			
			mapTest.put("mapNm", hSP.getParameter("testNm"));
			
			List<EgovMap> haksaengStatusTestTableList = haksaengStatusTestTableService.selectHaksaengStatusTestTableServiceList(mapTest);
			
			mdTest.addAttribute("haksaengStatusTestTableList", haksaengStatusTestTableList);
			
			this.move = "haksaengStatus/haksaengStatusSccuessTable.tiles";
		}
		else {
			
			this.move = "haksaengStatus/errerCodeHaksaengStatus.tiles";
			
		}
		
		return move;
	}
	
	@RequestMapping(value = "/stringParam.do")
	public String inItStringParam(HttpServletRequest req , ModelMap model) throws Exception {
		
		String paramStr = "한석현";
		
		System.out.println(paramStr);
		
		List<EgovMap> stringParam = haksaengStatusService.stringParam(paramStr);
		
		// MVC에 결과를 모델에다가 결과를 넣어야 됩니다.
		model.addAttribute("haksaengStatusList", stringParam);
		
		return "haksaengStatus/haksaengStatus.tiles";
	}
	
	@RequestMapping(value = "/paramVO.do")
	public String inItParamVO(HttpServletRequest req , ModelMap model) throws Exception {
		
		HaksaengStatusVO haksaengStatusVO = new HaksaengStatusVO();
		
		haksaengStatusVO.setUserId("hanq");
		haksaengStatusVO.setUserNm("한석현");
		haksaengStatusVO.setAge(39);
		
		List<EgovMap> paramVO = haksaengStatusService.selectParamVO(haksaengStatusVO);
		model.addAttribute("paramVO", paramVO);
		System.out.println(paramVO);
		
		return "haksaengStatus/haksaengStatusTable.tiles";
	}
	
	@RequestMapping(value = "/reqParam.do")
	public String initReqParam(@RequestParam String pageName,
							   @RequestParam Map<String, String> paramMap,
							   Model modelChart, 
							   Model modelTable) throws Exception {

		List<EgovMap> haksaengList = haksaengStatusService.selectHaksaengStatusServiceList();
		System.out.println(pageName);
		System.out.println(paramMap);
		
		modelTable.addAttribute("haksaengStatusList", haksaengList);
		
		return "haksaengStatus/haksaengStatusTable.tiles";
	}
	
	@RequestMapping(value = "/initIntroductionTable.do")
	public String initIntroduction(@RequestParam String pageName,
								   @RequestParam Map<String, String> paramMap,
								   @RequestParam String paramListFirst,
								   @RequestParam String paramListSecond,
								   @RequestParam String paramListThird,
								   Model modelTable) throws Exception {
		
		EgovMap egovMap 					= new EgovMap();
		HaksaengStatusVO haksaengStatusVO 	= new HaksaengStatusVO();
		
		try {
			haksaengStatusVO.setUserNm(paramListFirst);
			haksaengStatusVO.setUserId(paramListSecond);
			haksaengStatusVO.setAge(Integer.parseInt(paramListThird));
		}catch (Exception e) {
			System.out.println("예외버그");
		}
		
		try {
			System.out.println(paramListFirst);
			System.out.println(paramListSecond);
			System.out.println(Integer.parseInt(paramListThird));
		}catch (Exception e) {
			System.out.println("콘솔버그");
		}
		
		System.out.println("Test : " + haksaengStatusVO.getUserNm());
		System.out.println("Test : " + haksaengStatusVO.getUserId());
		System.out.println("Test : " + haksaengStatusVO.getAge());
		try {
			egovMap.put("userNm", haksaengStatusVO.getUserNm());
			egovMap.put("cafe_nick", haksaengStatusVO.getUserId());
			egovMap.put("age", haksaengStatusVO.getAge());
		}catch (Exception e) {
			System.out.println("egovMapError");
		}
		
		List<EgovMap> haksaengList = haksaengStatusService.selectHaksaengStatusServiceList(egovMap);
		System.out.println(pageName);
		System.out.println(paramMap);
		
		modelTable.addAttribute("introduction", haksaengList);
		
		return "haksaengStatus/haksaengStatusTable.tiles";
	}
}
