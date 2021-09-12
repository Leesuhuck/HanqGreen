package egovframework.example.welcomeWeb.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import egovframework.example.welcomeWeb.service.WelcomeWebService;
import egovframework.rte.psl.dataaccess.util.EgovMap;

@Service
public class WelcomeWebServiceImpl implements WelcomeWebService {

	@Resource
	private WelcomeWebMapper welcomeWebMapper;
	
	@Override
	public List<EgovMap> selectWelcomeWebServiceList() throws Exception {
		return welcomeWebMapper.selectWelcomeWebServiceList();
	}
}
