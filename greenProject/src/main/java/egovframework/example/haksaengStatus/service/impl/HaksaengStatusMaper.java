package egovframework.example.haksaengStatus.service.impl;

import java.util.List;

import egovframework.example.haksaengStatus.service.HaksaengStatusVO;
import egovframework.rte.psl.dataaccess.mapper.Mapper;
import egovframework.rte.psl.dataaccess.util.EgovMap;

@Mapper
public interface HaksaengStatusMaper {

	List<EgovMap> selectHaksaengStatusServiceList() throws Exception;

	List<EgovMap> selectHaksaengStatusServiceList(EgovMap egovMap) throws Exception;

	List<EgovMap> stringParam(String paramStr) throws Exception;

	List<EgovMap> selectParamVO(HaksaengStatusVO haksaengStatusVO) throws Exception;

	List<EgovMap> selectClassServiceList() throws Exception;

}
