package egovframework.example.haksaengStatus.test.service.impl;

import java.util.List;

import egovframework.rte.psl.dataaccess.mapper.Mapper;
import egovframework.rte.psl.dataaccess.util.EgovMap;

@Mapper
public interface HaksaengStatusTestTableMapper {

	List<EgovMap> selectHaksaengStatusTestTableServiceList(EgovMap mapTest) throws Exception;

}
