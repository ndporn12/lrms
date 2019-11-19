package kr.ac.sunmoon.lrms.reservation;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.view.RedirectView;

import kr.ac.sunmoon.lrms.lab.Lab;
import kr.ac.sunmoon.lrms.lab.LabServiceImpl;

@RestController
public class ReservationController {
	@Autowired
	ReservationServiceImpl reservationImpl;
	@Autowired
	LabServiceImpl labServiceImpl;

	
	//
	@PostMapping(value = "/searchreservation")
	@ResponseBody
	public List<Reservation> doReservationlistSearch(Reservation reservation) {
		System.out.println("통과1");
		System.out.println(reservation.getStartcalender());
		List<Reservation> reservations = reservationImpl.listReservation(reservation);
		return reservations;
	}
	
	// 예약 목록조회
	@GetMapping(value = "/reservation")
	public ModelAndView doReservationListInquiry() {
		ModelAndView modelAndView = new ModelAndView("/reservation/listview");
		
		List<Lab> labs = labServiceImpl.listLab();
		modelAndView.addObject("labs", labs);
		return modelAndView;
	}

	// 예약 조회
	@GetMapping(value = "/reservation/{no}")
	public ModelAndView doReservationInquiry(@PathVariable("no") int no) {
		ModelAndView modelAndView = new ModelAndView("/reservation/inquiryview");
		Reservation reservation = reservationImpl.inquiryReservation(no);

		modelAndView.addObject("reservation", reservation);
		return modelAndView;
	}

	// 예약 등록 폼
	@GetMapping(value = "/reservation/form")
	public ModelAndView doReservationAdd() {
		ModelAndView modelAndView = new ModelAndView("/reservation/addview");
		
		List<Lab> labs = labServiceImpl.listLab();
		modelAndView.addObject("labs", labs);
		
		return modelAndView;
	}

	// 예약 등록
	@PostMapping(value = "/reservation")
	public ModelAndView doReservationAdd(Reservation reservation,HttpSession session) {
		boolean returnValue = reservationImpl.addReservation(reservation,session);
		
		if (returnValue == false) {

			// todo..이미 등록된 예약이 존재합니다 알려주기
			return new ModelAndView(new RedirectView("/reservation/form"));
		}
		
		return new ModelAndView(new RedirectView("/reservation"));
	}

	// 예약 수정 폼
	@GetMapping(value = "/reservation/{no}/form")
	public ModelAndView doReservationEdit(@PathVariable("no") int no) {
		ModelAndView modelAndView = new ModelAndView("/reservation/editview");
		
		Reservation reservation = reservationImpl.inquiryReservation(no);
		List<Lab> labs = labServiceImpl.listLab();
		
		modelAndView.addObject("labs", labs);
		modelAndView.addObject("reservation", reservation);

		return modelAndView;
	}

	// 예약 수정
	@PutMapping(value = "/reservation")
	public ModelAndView doReservationEdit(Reservation reservation) {
		boolean returnValue = reservationImpl.updateReservation(reservation);

		if (returnValue == false) {
			System.out.println("------------------------");
			return new ModelAndView(new RedirectView("/reservation/" + reservation.getNo() + "/form"));
		}
		System.out.println("++++++++++++++++++");
		return new ModelAndView(new RedirectView("/reservation"));
	}

	// 예약 삭제
	@DeleteMapping("/reservation")
	public ModelAndView doReservationCancel(int no) {
		reservationImpl.cancelReservation(no);
		System.out.println("통과");
		return new ModelAndView(new RedirectView("/reservation"));
	}
}
