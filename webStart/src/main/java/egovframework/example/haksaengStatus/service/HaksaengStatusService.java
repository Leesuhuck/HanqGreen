package egovframework.example.haksaengStatus.service;

import java.util.List;

import egovframework.rte.psl.dataaccess.util.EgovMap;

public interface HaksaengStatusService {

	List<EgovMap> selectHaksaengStatusServiceList() throws Exception;

}
