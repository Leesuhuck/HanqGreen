package egovframework.example.partsMstVal.service.impl;

import java.util.List;

import egovframework.example.haksaengStatus.service.HaksaengStatusVO;
import egovframework.rte.psl.dataaccess.mapper.Mapper;
import egovframework.rte.psl.dataaccess.util.EgovMap;

@Mapper
public interface PartsMstValMaper {

	List<EgovMap> selectPartsMstList() throws Exception;

	List<EgovMap> selectPartsDtlList() throws Exception;

}
