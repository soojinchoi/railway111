package com.dorothy.railway999.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.dorothy.railway999.dao.QboardDao;
import com.dorothy.railway999.service.QboardService;
import com.dorothy.railway999.vo.QboardVo;


@Controller
@RequestMapping ("/qboard")
public class QboardController {
	
	@Autowired
	private QboardService qboardservice;

	@Autowired
	QboardDao dao;
	
	@RequestMapping("/list")
	public String index(Model model){
		List<QboardVo> list = dao.getList();
		System.out.println(list);
		model.addAttribute("list",list);
		return "/board/qboard";
	}
	
	//입력창
	@RequestMapping( "/insertform" )
	public String insertform(Model model,@ModelAttribute QboardVo vo) {
		model.addAttribute("vo",vo);
		return "/board/qboardwriteform";
	}
	
	//입력
	@RequestMapping("/insert")
	public String insert(@ModelAttribute QboardVo vo){
		dao.insert(vo);
		System.out.println(vo);
		return "redirect:/qboard/list";
	}
	
	//글조회
	@RequestMapping("/viewform")
    public String viewform(Model model, @ModelAttribute QboardVo vo ){
       	QboardVo qboardVo = qboardservice.viewQboard(vo);
		model.addAttribute("qboard", qboardVo);
       System.out.println( vo );
       return "/board/qboardviewform";
    }

	// 글(새글/답글) 수정폼 요청	 
	@RequestMapping( "/updateform" )
	public String updateform( Model model,@RequestParam long no ) {
		QboardVo vo = qboardservice.modify(no);
		model.addAttribute("vo",vo);
		return "/board/qboardmodifyform";
	}
	
	// 글(새글/답글) 수정 요청 
	@RequestMapping( "/update" )
	public String update( @ModelAttribute QboardVo vo ) {
		System.out.println(vo);
		qboardservice.updateQboard(vo);
		return "redirect:/qboard/list";
	}
	
	//삭제
	@RequestMapping( "/delete" )
	public String delete( Model model,@RequestParam long no) {
		System.out.println(no);
		qboardservice.deleteQboard(no);
		return "redirect:/qboard/list";
	}


	

}
