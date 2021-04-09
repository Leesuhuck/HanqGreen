package egovframework.example.haksaengStatus.chart.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import egovframework.example.haksaengStatus.chart.service.HaksaengStatusChartService;
import egovframework.rte.psl.dataaccess.util.EgovMap;

@Service
public class HaksaengStatusChartServiceImpl implements HaksaengStatusChartService {
	
	@Resource
	HaksaengStatusChartMapper haksaengStatusChartMapper;
	
	@Override
	public List<EgovMap> selecthaksaengStatusChartServiceList() throws Exception {

		return haksaengStatusChartMapper.selecthaksaengStatusChartServiceList();
	}

}
