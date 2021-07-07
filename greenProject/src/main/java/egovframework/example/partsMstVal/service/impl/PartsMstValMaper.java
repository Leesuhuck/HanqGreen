package egovframework.example.partsMstVal.service.impl;

import java.util.List;

import egovframework.example.haksaengStatus.service.HaksaengStatusVO;
import egovframework.rte.psl.dataaccess.mapper.Mapper;
import egovframework.rte.psl.dataaccess.util.EgovMap;

@Mapper
public interface PartsMstValMaper {

	List<EgovMap> selectPartsMstList() throws Exception;

	List<EgovMap> selectPartsDtlList() throws Exception;

	List<EgovMap> selectPartsDtlList(String partsCd) throws Exception;

	List<EgovMap> selectShoppingPartsBoxList() throws Exception;
	
	List<EgovMap> selectShoppingBoxList(String id) throws Exception;

	List<EgovMap> selectShoppingChoiceBoxList(String choId) throws Exception;

	List<EgovMap> selectMenuPartsMstList() throws Exception;

	List<EgovMap> selectMenuSelectSetPartsDtlVal(String menuCatCd) throws Exception;

}
