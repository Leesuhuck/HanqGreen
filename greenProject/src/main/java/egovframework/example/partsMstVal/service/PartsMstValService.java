package egovframework.example.partsMstVal.service;

import java.util.List;

import egovframework.rte.psl.dataaccess.util.EgovMap;

public interface PartsMstValService {

	List<EgovMap> selectPartsMstList() throws Exception;

	List<EgovMap> selectPartsDtlListList() throws Exception;

}
