package egovframework.example.haksaengStatus.service.impl;

import java.util.List;

import egovframework.rte.psl.dataaccess.mapper.Mapper;
import egovframework.rte.psl.dataaccess.util.EgovMap;

@Mapper
public interface HaksaengStatusMaper {

	List<EgovMap> selectHaksaengStatusServiceList() throws Exception;

	List<EgovMap> selectHaksaengStatusServiceList(EgovMap egovMap);

}
