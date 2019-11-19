package kr.ac.sunmoon.lrms.reservation;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.ac.sunmoon.lrms.manager.Manager;
import kr.ac.sunmoon.lrms.notice.NoticeMapper;

@Service
public class ReservationServiceImpl implements ReservationService {
	@Autowired
	ReservationMapper reservationMapper;
	@Autowired
	NoticeMapper noticeMapper;

	//예약 목록 조회
	@Override
	public List<Reservation> listReservation(Reservation reservation) {

		return reservationMapper.selectAllReservation(reservation);
	}

	//예약 조회
	@Override
	public Reservation inquiryReservation(int no) {

		return reservationMapper.selectReservation(no);
	}

	//예약 등록
	@Override
	public boolean addReservation(Reservation reservation,HttpSession session) {
		boolean isResult = true;
		// 1. 입력 받은 정보가 유효한가? 자바스크립트로 처리
		Manager manager = (Manager) session.getAttribute("managerInfo");
		String managerId = manager.getId();
		reservation.setManagerId(managerId);
		// 2. 실습실 번호와 예약 시작시간 예약 종료시간을 받아온다
		String startDate;
		String expiryDate;

		startDate = reservation.getStartcalender() + reservation.getStartTime() + reservation.getStartMinute();
		startDate = startDate.replaceAll("-", "");
		reservation.setStartDate(startDate);
		long startNumber = Long.parseLong(startDate);

		expiryDate = reservation.getEndcalender() + reservation.getEndTime() + reservation.getEndMinute();
		expiryDate = expiryDate.replaceAll("-", "");
		reservation.setExpiryDate(expiryDate);
		long endNumber = Long.parseLong(expiryDate);

		// 3. 기존에 정보와 중복되는지 중복검사를한다
		if (startNumber < endNumber) {
			int count;
			count = reservationMapper.selectResevationTime(reservation);
			if (count == 0) {
				// 4. 예약 등록을한다
				reservationMapper.insertReservation(reservation);
				// 5. 알림 등록을 한다
				int no = reservationMapper.selectReservationNo();
				
				reservation.setNo(no);
				reservation.setState("A");
				noticeMapper.insertNotice(reservation);
				
			} else {
				isResult = false;
			}

		} else {
			isResult = false;

		}
		return isResult;
	}

	//예약 수정
	@Override
	public boolean updateReservation(Reservation reservation) {
		boolean isResult = true;
		// 1. 입력받은 정보가 유효한가? 자바스크립트로 처리
		// 2. 실습실 번호와 예약 시작시간 예약 종료시간을 받아온다
		String startDate;
		String expiryDate;

		startDate = reservation.getStartcalender() + reservation.getStartTime() + reservation.getStartMinute();
		startDate = startDate.replaceAll("-", "");
		reservation.setStartDate(startDate);
		long startNumber = Long.parseLong(startDate);

		expiryDate = reservation.getEndcalender() + reservation.getEndTime() + reservation.getEndMinute();
		expiryDate = expiryDate.replaceAll("-", "");
		reservation.setExpiryDate(expiryDate);
		long endNumber = Long.parseLong(expiryDate);
		// 3. 기존에 정보와 중복되는지 중복검사를한다

		if (startNumber < endNumber) {
			int count;
			count = reservationMapper.selectResevationTime(reservation);
			System.out.println("11111111111111111");
			if (count == 0) {
				// 4. 예약 수정을한다
				System.out.println("2222222222222222222");
				reservationMapper.updateReservation(reservation);
				// 5. 알림 등록을 한다
			} else {
				System.out.println("333333333333");
				isResult = false;
			}

		} else {
			System.out.println("4444444444444444");
			isResult = false;
		}
		System.out.println("555555555555555");
		return isResult;
	}

	//예약 삭제
	@Override
	public void cancelReservation(int no) {
		reservationMapper.deleteReservation(no);
		Reservation reservation = reservationMapper.selectReservation(no);
		noticeMapper.insertNotice(reservation);

	}
	
	//예약 파일 다운로드
	@Override
	public List<Reservation> downloadReservationList() {
		return null;
	}

}
