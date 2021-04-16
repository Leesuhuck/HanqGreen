package egovframework.example.haksaengStatus.test.service.impl;

import java.util.List;

import javax.annotation.Resource;

import egovframework.example.haksaengStatus.test.service.HaksaengStatusTestTableService;
import egovframework.rte.psl.dataaccess.util.EgovMap;

public class HaksaengStatusTestTableServiceImpl implements HaksaengStatusTestTableService {
	
	@Resource
	HaksaengStatusTestTableMapper haksaengStatusTestTableMapper;
	
	@Override
	public List<EgovMap> selectHaksaengStatusTestTableServiceList() throws Exception {

		return haksaengStatusTestTableMapper.selectHaksaengStatusTestTableServiceList();
	}

}
