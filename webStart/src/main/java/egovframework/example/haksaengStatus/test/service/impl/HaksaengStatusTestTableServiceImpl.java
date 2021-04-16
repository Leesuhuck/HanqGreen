package egovframework.example.haksaengStatus.test.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import egovframework.example.haksaengStatus.test.service.HaksaengStatusTestTableService;
import egovframework.rte.psl.dataaccess.util.EgovMap;

@Service
public class HaksaengStatusTestTableServiceImpl implements HaksaengStatusTestTableService {
	
	@Resource
	HaksaengStatusTestTableMapper haksaengStatusTestTableMapper;

	@Override
	public List<EgovMap> selectHaksaengStatusTestTableServiceList(EgovMap mapTest) throws Exception {
		// TODO Auto-generated method stub
		return haksaengStatusTestTableMapper.selectHaksaengStatusTestTableServiceList(mapTest);
	}
	

}
