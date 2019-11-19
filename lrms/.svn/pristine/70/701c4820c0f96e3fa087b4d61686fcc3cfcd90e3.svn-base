package kr.ac.sunmoon.lrms.record;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import kr.ac.sunmoon.lrms.reservation.Reservation;

@RestController
public class RecordController {
	@Autowired
	RecordService recordService;
	
	//예약 이력 조회
	@ResponseBody
	@PostMapping(value = "/searchrecord")
	public List<Reservation> dosearchRecord(Record record) {
		System.out.println(record.getCategory());
		List<Reservation> reservations = recordService.inquiryRecord(record);
	
		return reservations;
	}
	
	//예약 이력 조회 폼
	@GetMapping(value = "/record")
	public ModelAndView doRecordSearch() {
		ModelAndView modelAndView = new ModelAndView("/record/listview");
		
		
		return modelAndView;
	}
}
