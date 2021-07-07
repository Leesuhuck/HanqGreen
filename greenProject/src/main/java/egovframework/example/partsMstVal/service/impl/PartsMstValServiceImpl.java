package egovframework.example.partsMstVal.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import egovframework.example.partsMstVal.service.PartsMstValService;
import egovframework.rte.psl.dataaccess.util.EgovMap;

@Service
public class PartsMstValServiceImpl implements PartsMstValService {

	@Resource
	PartsMstValMaper partsMstValMaper;

	@Override
	public List<EgovMap> selectPartsMstList() throws Exception {
		
		return partsMstValMaper.selectPartsMstList();
	}

	@Override
	public List<EgovMap> selectPartsDtlListList(String partsCd) throws Exception {
		
		return partsMstValMaper.selectPartsDtlList(partsCd);
	}

	@Override
	public List<EgovMap> selectShoppingPartsBoxList() throws Exception {
		
		return partsMstValMaper.selectShoppingPartsBoxList();
	}
	
	@Override
	public List<EgovMap> selectShoppingBoxList(String id) throws Exception {

		return partsMstValMaper.selectShoppingBoxList(id);
	}

	@Override
	public List<EgovMap> selectShoppingChoiceBoxList(String choId) throws Exception {

		return partsMstValMaper.selectShoppingChoiceBoxList(choId);
	}

	@Override
	public List<EgovMap> selectMenuPartsMstList() throws Exception {

		return partsMstValMaper.selectMenuPartsMstList();
	}

	@Override
	public List<EgovMap> selectMenuSelectSetPartsDtlVal(String menuCatCd) throws Exception {

		return partsMstValMaper.selectMenuSelectSetPartsDtlVal(menuCatCd);
	}

	
}
