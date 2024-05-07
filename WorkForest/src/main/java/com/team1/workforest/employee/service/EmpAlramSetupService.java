package com.team1.workforest.employee.service;

import java.util.List;
import java.util.Map;

import com.team1.workforest.employee.vo.EmployeeVO;
import com.team1.workforest.vo.UserSetupNtcnMatterVO;

public interface EmpAlramSetupService {

	public List<UserSetupNtcnMatterVO> getAlramSetUpList(EmployeeVO empVo);

	public int updateAlramSetUpList(Map<String, String> map);


}
