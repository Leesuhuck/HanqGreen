package egovframework.example.partsMstVal.service;

import java.util.List;

import egovframework.rte.psl.dataaccess.util.EgovMap;

public interface PartsMstValService {

	List<EgovMap> selectPartsMstList() throws Exception;

	List<EgovMap> selectPartsDtlListList(String partsCd) throws Exception;

	List<EgovMap> selectShoppingPartsBoxList() throws Exception;
	
	List<EgovMap> selectShoppingBoxList(String id) throws Exception;

	List<EgovMap> selectShoppingChoiceBoxList(String choId) throws Exception;

}
