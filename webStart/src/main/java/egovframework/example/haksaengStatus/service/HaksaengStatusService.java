package egovframework.example.haksaengStatus.service;

import java.util.List;

import egovframework.rte.psl.dataaccess.util.EgovMap;

public interface HaksaengStatusService {

	List<EgovMap> selectHaksaengStatusServiceList() throws Exception;
	
	List<EgovMap> selectHaksaengStatusServiceList(EgovMap egovMap) throws Exception;

	List<EgovMap> stringParam(String paramStr) throws Exception;

	List<EgovMap> selectParamVO(HaksaengStatusVO haksaengStatusVO) throws Exception;

}
