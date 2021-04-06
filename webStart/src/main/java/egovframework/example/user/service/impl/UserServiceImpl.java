package egovframework.example.user.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import egovframework.example.user.service.UserService;
import egovframework.rte.psl.dataaccess.util.EgovMap;

@Service
public class UserServiceImpl implements UserService {
	
	@Resource
	UserMapper userMapper;

	@Override
	public List<EgovMap> selectUserServiceList() throws Exception {
		
		return userMapper.selectUserServiceList();
	}

}
