package egovframework.example.count.service.impl;

import java.util.List;

import javax.annotation.Resource;

import egovframework.example.count.service.CountService;
import egovframework.rte.psl.dataaccess.util.EgovMap;

public class CountServiceImpl implements CountService{

	@Resource
	CountMapper countMapper;
	
	@Override
	public List<EgovMap> selectCountServiceList() throws Exception {

		return countMapper.selectCountServiceList();
	}

}
