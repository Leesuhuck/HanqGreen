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
	public List<EgovMap> selectPartsDtlListList(String partsCd) {
		
		return partsMstValMaper.selectPartsDtlList(partsCd);
	}

	
}
