package egovframework.example.haksaengStatus.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import egovframework.example.haksaengStatus.service.HaksaengStatusService;
import egovframework.example.haksaengStatus.service.HaksaengStatusVO;
import egovframework.rte.psl.dataaccess.util.EgovMap;

@Service
public class HaksaengStatusServiceImpl implements HaksaengStatusService {

	@Resource
	HaksaengStatusMaper haksaengStatusMaper;

	@Override
	public List<EgovMap> selectHaksaengStatusServiceList(EgovMap egovMap) throws Exception {

		return haksaengStatusMaper.selectHaksaengStatusServiceList(egovMap);
	}

	@Override
	public List<EgovMap> selectHaksaengStatusServiceList() throws Exception {

		return haksaengStatusMaper.selectHaksaengStatusServiceList();
	}

	@Override
	public List<EgovMap> stringParam(String paramStr) throws Exception {
		
		return haksaengStatusMaper.stringParam(paramStr);
	}

	@Override
	public List<EgovMap> selectParamVO(HaksaengStatusVO haksaengStatusVO) throws Exception {

		return haksaengStatusMaper.selectParamVO(haksaengStatusVO);
	}

	@Override
	public List<EgovMap> selectClassServiceList() throws Exception {

		return haksaengStatusMaper.selectClassServiceList();
	}

}
