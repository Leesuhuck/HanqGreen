package egovframework.example.count.service;

import java.util.List;

import egovframework.rte.psl.dataaccess.util.EgovMap;

public interface CountService {

	List<EgovMap> selectCountServiceList() throws Exception;

}
