package egovframework.example.welcomeWeb.service.impl;

import java.util.List;

import egovframework.rte.psl.dataaccess.mapper.Mapper;
import egovframework.rte.psl.dataaccess.util.EgovMap;

@Mapper
public interface WelcomeWebMapper {

	List<EgovMap> selectWelcomeWebServiceList() throws Exception;
}
