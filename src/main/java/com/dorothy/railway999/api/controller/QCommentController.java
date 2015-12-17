package com.dorothy.railway999.api.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.dorothy.railway999.service.QCommentService;
import com.dorothy.railway999.vo.QcommentsVo;

@Controller( "CommendAPIController" )
@RequestMapping( "/api/qcomment" )
public class QCommentController {
	
	@Autowired
	QCommentService qcommentService;
	
	@ResponseBody
	@RequestMapping("/list")
	public Map<String, Object> list() {
		List<QcommentsVo> list = qcommentService.listMessage();	
		System.out.println(list);
		Map<String, Object> map = new HashMap<String, Object>();
		map.put( "result", "success" );
		map.put( "data", list );
		return map;
	}
	
	@ResponseBody  // Json 통신시 필요함.
	@RequestMapping( value = "/insert" )
	public Map<String, Object> insert( @ModelAttribute QcommentsVo vo ) {	
		QcommentsVo qcommentsVo = qcommentService.writeMessage( vo );
		Map<String, Object> map = new HashMap<String, Object>();
		map.put( "result", "success" );
		map.put( "data", qcommentsVo );

		return map;
	}
	
	
	//댓글삭제
	@ResponseBody  // Json 통신시 필요함.
	@RequestMapping( value = "/delete" )
	public Map<String, Object> delete( @ModelAttribute QcommentsVo vo ) {	
			qcommentService.deleteMessage( vo );
			Map<String, Object> map = new HashMap<String, Object>();
			map.put( "result", "success" );
			map.put( "data", vo.getQcommentsno() );
			
			return map;
		}

	/*
		@RequestMapping( "/delete" )
	public String delete( Model model,@RequestParam long no) {
		System.out.println(no);
		qboardservice.deleteQboard(no);
		return "redirect:/qboard/list";
	 */
	
	
}

