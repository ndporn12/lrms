package kr.ac.sunmoon.lrms.lab;

import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.OutputStream;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.view.RedirectView;

@Controller
public class LabController {
	@Autowired
	private LabService labService;

	// 실습실 목록 조회
	@RequestMapping(value = "/lab", method = RequestMethod.GET)
	public ModelAndView doLabList() {
		ModelAndView modelAndView = new ModelAndView("/lab/listview");

		List<Lab> listLab = this.labService.listLab();
		modelAndView.addObject("listLab", listLab);

		return modelAndView;
	}

	// 실습실 조회
	@RequestMapping(value = "/lab/{no}", method = RequestMethod.GET)
	public ModelAndView doLabInquiry(@PathVariable int no) {
		ModelAndView modelAndView = new ModelAndView("/lab/inquiryview");

		Lab lab = this.labService.inquiryLab(no);
		modelAndView.addObject("lab", lab);
		return modelAndView;
	}

	// 실습실 등록 폼
	@RequestMapping(value = "/lab/form", method = RequestMethod.GET)
	public ModelAndView doLabAdd() {
		return new ModelAndView("/lab/addview");
	}

	// 실습실 등록
	@RequestMapping(value = "/lab", method = RequestMethod.POST)
	public ModelAndView doLabAdd(Lab lab, MultipartFile multipartFile) {
		this.labService.addLab(lab, multipartFile);
		return new ModelAndView(new RedirectView("/lab"));
	}

	// 실습실 수정 폼
	@RequestMapping(value = "/lab/{no}/form", method = RequestMethod.GET)
	public ModelAndView doLabEdit(@PathVariable int no) {
		Lab lab = this.labService.inquiryLab(no);

		ModelAndView modelAndView = new ModelAndView("/lab/editview");
		modelAndView.addObject("lab", lab);

		return modelAndView;
	}

	// 실습실 수정
	@RequestMapping(value = "/lab", method = RequestMethod.PUT)
	public ModelAndView doLabEdit(Lab lab, MultipartFile multipartFile) {
		ModelAndView modelAndView = new ModelAndView(new RedirectView("/lab"));
		this.labService.editLab(lab, multipartFile);
		return modelAndView;
	}

	// 실습실 삭제
	@RequestMapping(value = "/lab/{no}", method = RequestMethod.DELETE)
	public ModelAndView doLabDelete(@PathVariable int no) {
		this.labService.deleteLab(no);
		return new ModelAndView(new RedirectView("/lab"));
	}

	// 중복 테스트
	@RequestMapping(value = "/check", method = RequestMethod.POST)
	@ResponseBody
	public int postIdCheck(HttpServletRequest req) {
		int result = 0;
		try {
			int labNo = Integer.valueOf(req.getParameter("no"));
			Lab lab = this.labService.inquiryLab(labNo);

			if (lab != null) {
				if ("C".equals(lab.getState())) {
					result = 0;
				} else if (lab.getNo() == labNo) {
					result = 1;
				}
			}

		} catch (Exception e) {
			result = 1;
		}
		return result;
	}

	// 실습실 삭제
	@RequestMapping(value = "/lab/image/{no}")
	public void getImage(@PathVariable int no, HttpServletResponse response) {
		byte[] buffer = null;
		BufferedInputStream bis = null;
		ByteArrayOutputStream bao = null;
		OutputStream out = null;
		// 1. id 해당하는 사진 정보를 조회한다.
		Lab lab = this.labService.inquiryLab(no);
		// 2. 해당 물리 경로에 위치한 파일을 읽어온다.
		try {
			File originalFile = new File(lab.getPath() + lab.getPhysicalFileName() + "_" + lab.getLogicalFileName());

			if (originalFile.exists()) {
				bis = new BufferedInputStream(new FileInputStream(originalFile));
				bao = new ByteArrayOutputStream();
				buffer = new byte[1024];
			}

			int readLength = 0;
			while ((readLength = bis.read(buffer)) != -1) {
				bao.write(buffer, 0, readLength);
			}

			byte[] imgebuf = null;
			imgebuf = bao.toByteArray();

			int length = imgebuf.length;
			out = response.getOutputStream();
			out.write(imgebuf, 0, length);

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				bao.close();
				bis.close();
		
			} catch (Exception e) {
			}
		}
	}
}
