package com.modernhome.controller;

import java.util.List;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.modernhome.domain.EmployeeVO;
import com.modernhome.domain.RequirementVO;
import com.modernhome.domain.WorkInstrVO;
import com.modernhome.service.WorkInstrService;

@Controller
@RequestMapping(value = "/production")
public class WorkInstructController {
	
	private static final Logger logger = LoggerFactory.getLogger(WorkInstructController.class);
	
	// ===========================================
	
	
	// 의존성 주입
	@Inject
	private WorkInstrService wiService;
	
	
	// ===========================================
	
	// http://localhost:8088/production/instruct/add.jsp
	// 작업지시서 작성(GET) - /production/instruct/add
	@RequestMapping(value = "/instruct/add", method = RequestMethod.GET)
	public void addInstrGET() throws Exception {
		logger.debug("addInstrGET() 호출");
		logger.debug("/production/instruct/add 뷰페이지 이동");
	}
	
	// 작업지시서 작성 처리(POST) - /production/instruct/add
	@RequestMapping(value = "/instruct/add", method = RequestMethod.POST)
	public String addInstrPOST(WorkInstrVO vo) throws Exception {
		logger.debug("addInstrPOST() 호출");
		
		logger.debug("@@@@@@@@@@@@@@@@@vo : {}", vo);
		
		return "redirect:/production/instruct/list";
	}
	
	
	// http://localhost:8088/production/instruct/list
	// 작업지시 리스트 출력(GET) - /production/instruct/list
	@RequestMapping(value = "/instruct/list", method = RequestMethod.GET)
	public void getInstrList(Model model) throws Exception {
		logger.debug("getInstrList() 호출");
		
		// 작업지시 목록 출력 메서드 (서비스 -> DAO)
		List<WorkInstrVO> instrList = wiService.getInstrList();
		logger.debug("instrList : {}", instrList);
		
		// 연결된 뷰페이지에 전달
		model.addAttribute("instrList", instrList);
		
		// 페이지 이동
		logger.debug("/production/instruct/list.jsp 뷰페이지로 이동");
	}
	
	// http://localhost:8088/production/instruct/info?work_id=
	// 작업지시 상세보기 출력(GET) - /production/instruct/info
	@RequestMapping(value = "/instruct/info", method = RequestMethod.GET)
	public void getInstr(Model model, @ModelAttribute("work_id") Integer work_id, WorkInstrVO wivo) throws Exception {
		logger.debug("getInstr() 호출");
		
		// 작업지시 아이디에 해당하는 작업지시 조회 (서비스 -> DAO)
		List<WorkInstrVO> wiList = wiService.getInstr(work_id);
		List<WorkInstrVO> reqList = wiService.getInstrReq(wivo);
		logger.debug("wiList : {}", wiList);
		logger.debug("reqList : {}", reqList);
		
		// 연결된 뷰페이지에 전달
		model.addAttribute("wiList", wiList);
		
		// 페이지 이동
		logger.debug("/production/instruct/info.jsp 뷰페이지로 이동");
	}
	
	
	// 작업지시 수정(GET) - /production/instruct/modify
	
	// 작업지시 수정 처리(POST) - /production/instruct/modify
	
	
	// 작업지시 삭제(GET) - /production/instruct/delete
	
	// 작업지시 삭제 처리(POST) - /production/instruct/delete
	
}