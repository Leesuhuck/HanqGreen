package egovframework.example.count.service.impl;

import java.util.List;

import egovframework.rte.psl.dataaccess.util.EgovMap;

public interface CountMapper {

	List<EgovMap> selectCountServiceList() throws Exception;

}
