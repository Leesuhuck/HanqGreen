package egovframework.example.welcomeWeb.service;

import java.util.List;

import egovframework.rte.psl.dataaccess.util.EgovMap;

public interface WelcomeWebService {

	List<EgovMap> selectWelcomeWebServiceList() throws Exception;
}
