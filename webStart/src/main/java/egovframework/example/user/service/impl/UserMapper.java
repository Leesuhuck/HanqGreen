package egovframework.example.user.service.impl;

import java.util.List;

import egovframework.rte.psl.dataaccess.mapper.Mapper;
import egovframework.rte.psl.dataaccess.util.EgovMap;

@Mapper
public interface UserMapper {

	List<EgovMap> selectUserServiceList() throws Exception;

}
