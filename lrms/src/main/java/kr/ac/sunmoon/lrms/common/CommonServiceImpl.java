package kr.ac.sunmoon.lrms.common;


import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.ac.sunmoon.lrms.manager.Manager;
import kr.ac.sunmoon.lrms.manager.ManagerMapper;

@Service
public class CommonServiceImpl implements CommonService{
	@Autowired
	ManagerMapper managerMapper;
	Manager manager;
	
	@Override
	public boolean login(Manager manager, HttpSession session) {
		boolean islogin = false;
		
		//입력값이 존재 하는지 판단
		String managerId = manager.getId();
		String managerPassword = manager.getPassword();		

		if(managerId != null
				&& managerPassword != null
				&& !managerId.equals("")
				&& !managerPassword.equals("")) {
			//관리자 조회
			//조회 결과가 존재하는가?
			if(managerMapper.loginChecker(managerId,managerPassword) == 1) {
				System.out.println("조회된 정보가 있습니다.");
				islogin=true;
				Manager managerInfo = managerMapper.selectManager(managerId);
				session.setAttribute("managerInfo", managerInfo);
				session.setMaxInactiveInterval(10*60);
			}else {
				System.out.println("조회되는 정보가 없습니다.");
				islogin = false;
			}
			
		}else {
			System.out.println("입력받은 값이 적절하지 않습니다.");
			islogin = false;
		}
		System.out.println(islogin);
		
		return islogin;
	}

	@Override
	public void logout() {		
	}
	

}
