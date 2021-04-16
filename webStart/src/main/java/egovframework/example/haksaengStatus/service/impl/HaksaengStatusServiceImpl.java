package egovframework.example.haksaengStatus.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import egovframework.example.haksaengStatus.service.HaksaengStatusService;
import egovframework.rte.psl.dataaccess.util.EgovMap;

@Service
public class HaksaengStatusServiceImpl implements HaksaengStatusService {

	@Resource
	HaksaengStatusMaper haksaengStatusMaper;

	@Override
	public List<EgovMap> selectHaksaengStatusServiceList(EgovMap egovMap) throws Exception {
		// TODO Auto-generated method stub
		return haksaengStatusMaper.selectHaksaengStatusServiceList(egovMap);
	}

	@Override
	public List<EgovMap> selectHaksaengStatusServiceList() throws Exception {
		// TODO Auto-generated method stub
		return haksaengStatusMaper.selectHaksaengStatusServiceList();
	}

}
