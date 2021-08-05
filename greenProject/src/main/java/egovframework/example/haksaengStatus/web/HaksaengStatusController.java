package egovframework.example.haksaengStatus.web;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import egovframework.example.cmmn.JsonUtil;
import egovframework.example.haksaengStatus.chart.service.HaksaengStatusChartService;
import egovframework.example.haksaengStatus.service.HaksaengStatusService;
import egovframework.example.haksaengStatus.service.HaksaengStatusVO;
import egovframework.example.haksaengStatus.service.HaksaengStudyVO;
import egovframework.example.haksaengStatus.test.service.HaksaengStatusTestTableService;
import egovframework.example.partsMstVal.service.PartsMstValService;
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
	
	@Resource
	PartsMstValService partsMstValService;
	
	
	@RequestMapping(value = "/initHaksaengStatus.do")
	public String initHaksaengStatus(Model modelHaksaeng) throws Exception {
		
		List<EgovMap> haksaengStatusList = haksaengStatusService.selectHaksaengStatusServiceList();
		
		List<EgovMap> haksaengStatusChartList = haksaengStatusChartService.selecthaksaengStatusChartServiceList();
		
		modelHaksaeng.addAttribute("haksaengStatusList", haksaengStatusList);
		
		modelHaksaeng.addAttribute("haksaengStatusChartList", haksaengStatusChartList);
		
		System.out.println(haksaengStatusChartList);
		
		return "haksaengStatus/haksaengStatus.tiles";
	}

	@RequestMapping(value = "/oneLove.do")
	public String initoneLove(HttpServletRequest req, Model modelChart, Model modelTable) throws Exception {
		
		String move = "";

		if (req.getParameter("pageName").equals("initHaksaengStatusChart")) {
		
			List<EgovMap> haksaengStatusChartList = haksaengStatusChartService.selecthaksaengStatusChartServiceList();
			
			modelChart.addAttribute("haksaengStatusChartList", haksaengStatusChartList);
			
			move = "haksaengStatus/haksaengStatusChart.tiles";
			
		}
		
		else if (req.getParameter("pageName").equals("initHaksaengStatusTable")) {
			
			EgovMap egovMap = new EgovMap();
			
			egovMap.put("userNm", req.getParameter("tName"));
			egovMap.put("cafeNick", "한큐");
			
			List<EgovMap> haksaengStatusList = haksaengStatusService.selectHaksaengStatusServiceList(egovMap);
			
			modelTable.addAttribute("haksaengStatusList", haksaengStatusList);

			move = "haksaengStatus/haksaengStatusTable.tiles";
			
		}
		
		return move;
		
	}
	
	@RequestMapping(value="/testServerList.do")
	public String initTestview(@RequestParam String pageName,
							   @RequestParam String testNm,
							   Model mdTest) throws Exception {
		
		String move = "";
		
		if (pageName.equals("initHaksaengStatusTestTable")) {
			
			EgovMap mapTest = new EgovMap();
			
			mapTest.put("mapNm", testNm);
			
			List<EgovMap> haksaengStatusTestTableList = haksaengStatusTestTableService.selectHaksaengStatusTestTableServiceList(mapTest);
			
			mdTest.addAttribute("haksaengStatusTestTableList", haksaengStatusTestTableList);
			
			move = "haksaengStatus/haksaengStatusSccuessTable.tiles";
		}
		else {
			
			move = "haksaengStatus/errerCodeHaksaengStatus.tiles";
			
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
								   @ModelAttribute("studyVO") HaksaengStudyVO studyVO,
								   Model modelTable) throws Exception {
		
		EgovMap egovMap 					= new EgovMap();
		HaksaengStatusVO haksaengStatusVO 	= new HaksaengStatusVO();
		
		List<EgovMap> haksaengList = haksaengStatusService.selectHaksaengStatusServiceList(egovMap);
		System.out.println(pageName);
		System.out.println(paramMap);
		
		modelTable.addAttribute("introduction", haksaengList);
		
		haksaengStatusVO.setUserNm(paramListFirst);
		haksaengStatusVO.setUserId(paramListSecond);
		haksaengStatusVO.setAge(Integer.parseInt(paramListThird.equals("") ? "0" : paramListThird));
		
		// VO 데이터 Set 확인
		System.out.println("voSetUserNm : " + paramListFirst);
		System.out.println("voSetUserId : " + paramListSecond);
		System.out.println("voSetAge : " + paramListThird);

		// VO 데이터 Get 확인
		System.out.println("voGetUserNm : " + haksaengStatusVO.getUserNm());
		System.out.println("voGetUserId : " + haksaengStatusVO.getUserId());
		System.out.println("voGetAge : " + haksaengStatusVO.getAge());
		
		// VO 데이터 적용
		egovMap.put("userNm", haksaengStatusVO.getUserNm());
		egovMap.put("cafe_nick", haksaengStatusVO.getUserId());
		egovMap.put("age", haksaengStatusVO.getAge());
		
		
		return "haksaengStatus/haksaengStudyTable.tiles";
	}
	
	@RequestMapping(value = "/modelAttr.do")
	public String initModelAttr(@ModelAttribute("vo") HaksaengStatusVO vo,
							   Model modelTable) throws Exception {
		
		EgovMap egovMap = new EgovMap();
		
		System.out.println(vo.getUserId());
		System.out.println(vo.getUserNm());
		System.out.println(vo.getCafeNick());
		
		
		egovMap.put("userId", vo.getUserId());
		egovMap.put("userNm", vo.getUserNm());
		

		List<EgovMap> haksaengList = haksaengStatusService.selectHaksaengStatusServiceList();
				
		modelTable.addAttribute("haksaengStatusList", haksaengList);
		
		return "haksaengStatus/modelAttriTable.tiles";
	}
	
	/**
	 * 
	 * @param paramBoxMap
	 * @param pcCheck
	 * @param modelTable
	 * @param model
	 * @return
	 * @throws Exception pcCheck에서 syso없는걸 가져올려고 syso을 하니 시스템에서 에러를 발생시킨다.
	 * <pre>
	 해당코드
	 System.out.println(Arrays.toString(pcCheck));
	 System.out.println("length : " + pcCheck.length);
	 System.out.println("pcCheck[0] : " + pcCheck[0]);
	 * </pre>
	 */
	@RequestMapping(value = "/chkBox.do")
	public String initchkBox(@RequestParam(required=false) Map<String, String> paramBoxMap,
							 @RequestParam(required=false) String[] pcCheck,
							   Model modelTable,
							   ModelMap model) throws Exception {
		
		//String getCheck = paramBoxMap.get("pcCheck");
		
		List<EgovMap> hacksengStatusList = haksaengStatusService.selectHaksaengStatusServiceList();
		
		model.addAttribute("haksaengList", hacksengStatusList);
				
		if (pcCheck != null || Arrays.toString(pcCheck) != "") modelTable.addAttribute("pcCheck", pcCheck);
		
		System.out.println(Arrays.toString(pcCheck));
		
		return "haksaengStatus/array.tiles";
	}
	
	@RequestMapping(value = "/chkBoxTwo.do")
	public String initchkBoxTwo(@RequestParam(required=false) String[] requestChk,
							   Model modelTable) throws Exception {
		
		String[] newList = {"green","yellow","blue"};
		
		List<EgovMap> hacksengStatusList = haksaengStatusService.selectHaksaengStatusServiceList();
		
		List<EgovMap> classList = haksaengStatusService.selectClassServiceList();
		
		modelTable.addAttribute("haksaengList", hacksengStatusList);
		
		modelTable.addAttribute("classList", classList);
		
		System.out.println(classList);
		
			if (requestChk != null || Arrays.toString(requestChk) != "") {
				
				modelTable.addAttribute("requestChk", requestChk);
				
			}
		
		
		System.out.println(Arrays.toString(requestChk));
		
		return "haksaengStatus/arrayChkBoxTwo.tiles";
	}
	
	@RequestMapping(value = "/multiSelectBox.do")
	public String initMultiSelectBox(Model modelTable) throws Exception {
		
		List<EgovMap> partsMstList = partsMstValService.selectPartsMstList();
		
		System.out.println(partsMstList);
		
		modelTable.addAttribute("partsMstList", partsMstList);
		
		
		return "haksaengStatus/multiSelectBox.tiles";
	}
	
	@RequestMapping(value = "/selectPartsDtl.do", produces="application/json; charset=utf-8")
	@ResponseBody
	public String initSelectPartsDtl(@RequestParam String partsCd,
								  HttpServletResponse res) throws Exception {
		
		List<EgovMap> partsDtlList = partsMstValService.selectPartsDtlListList(partsCd);
		
		return JsonUtil.ListToJson(partsDtlList);
		
	}
	
	@RequestMapping(value = "/shoppingPartsBox.do")
	public String initShoppingPartsBox(Model modelTable) throws Exception {
		
		List<EgovMap> shoppingBoxPartsList = partsMstValService.selectShoppingPartsBoxList();
		
		System.out.println(shoppingBoxPartsList);
		
		modelTable.addAttribute("shoppingBoxPartsList", shoppingBoxPartsList);
		
		
		return "haksaengStatus/shoppingBox.tiles";
	}
	
	@RequestMapping(value = "/shoppingBox.do")
	public void initShoppingBox(@RequestParam String id,
								  HttpServletResponse res) throws Exception {
		
		List<EgovMap> shoppingBoxList = partsMstValService.selectShoppingBoxList(id);
		
		JsonUtil jsonUtil = new JsonUtil();
		
		res.setCharacterEncoding("utf-8");
		
		res.getWriter().write(jsonUtil.ListToJson(shoppingBoxList));
		
		
		
	}
	
	@RequestMapping(value = "/menuSelectBox.do")
	public String initMenuSelectBox(Model modelTable) throws Exception {
		
		List<EgovMap> menuPartsMstList = partsMstValService.selectMenuPartsMstList();
		
		System.out.println(menuPartsMstList);
		
		modelTable.addAttribute("menuPartsMstList", menuPartsMstList);
		
		
		return "haksaengStatus/menuSelectBox.tiles";
	}
	
	@RequestMapping(value = "/menuSelectSetPartsDtl.do", produces="application/json; charset=utf-8")
	@ResponseBody
	public String initMenuSelectSetPartsDtl(@RequestParam String menuCatCd,
								  HttpServletResponse res) throws Exception {
		
		List<EgovMap> menuSelectSetPartsDtlVal = partsMstValService.selectMenuSelectSetPartsDtlVal(menuCatCd);
		
		return JsonUtil.ListToJson(menuSelectSetPartsDtlVal);
		
	}
	
	@RequestMapping(value = "/selectHaksaengStatusList.do", produces="application/json; charset=utf-8")
	@ResponseBody
	public String initHaksaengStatusList(@RequestParam String param) throws Exception {
		
		EgovMap egovParam = new EgovMap();
		egovParam.put("classNm",param);
		List<EgovMap> haksaengStatusList = haksaengStatusService.selectHaksaengStatusServiceList(egovParam);
		
		if (param.length() == 0) {
			return null;
		} else {
			return JsonUtil.ListToJson(haksaengStatusList);
		}
	}
	
}
