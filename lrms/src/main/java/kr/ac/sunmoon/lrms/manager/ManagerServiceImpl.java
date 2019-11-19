package kr.ac.sunmoon.lrms.manager;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ManagerServiceImpl implements ManagerService{
	@Autowired
	ManagerMapper managerMapper;
	@Autowired
	ManagerController managerController;
	
	@Override
	public List<Manager> listManager() {
		return managerMapper.selectManagerAll();
	}
	
	@Override
	public void addManager(Manager manager) {
		//유효값 검사 - jsp에서 처리 완료
		//중복 검사 - 다른 메소드에서 처리중
		//관리자 등록 - 처리 완료
		managerMapper.insertManager(manager);
	}

	@Override
	public Manager inquiryManager(String managerId) {
		Manager managerInfo = managerMapper.selectManager(managerId);
		return managerInfo;
	}

	@Override
	public void editManager(Manager manager) {
		managerMapper.updateManager(manager);
	}
	@Override
	public void deleteManager(String managerId) {
		managerMapper.deleteManager(managerId);
		
	}

	@Override
	public boolean isDuplication(String managerId) {
		int duplicationCount = managerMapper.duplicationCheck(managerId);
		if(duplicationCount == 0) {
			return false;
		}else {
			return true;			
		}
	}



}
