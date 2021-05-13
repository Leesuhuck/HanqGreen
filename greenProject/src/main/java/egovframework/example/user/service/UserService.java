package egovframework.example.user.service;

import java.util.List;

import egovframework.rte.psl.dataaccess.util.EgovMap;

public interface UserService {

	List<EgovMap> selectUserServiceList()  throws Exception;

}
