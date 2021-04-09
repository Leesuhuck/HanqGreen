package egovframework.example.haksaengStatus.chart.service.impl;

import java.util.List;

import egovframework.rte.psl.dataaccess.mapper.Mapper;
import egovframework.rte.psl.dataaccess.util.EgovMap;

@Mapper
public interface HaksaengStatusChartMapper {

	List<EgovMap> selecthaksaengStatusChartServiceList() throws Exception;

}
