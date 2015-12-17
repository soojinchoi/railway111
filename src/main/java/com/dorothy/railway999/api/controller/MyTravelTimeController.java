package com.dorothy.railway999.api.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.dorothy.railway999.service.MyTravelTimeService;
import com.dorothy.railway999.vo.MyTravelTimeVo;

@Controller
@RequestMapping("/api/travel")
public class MyTravelTimeController {
	@Autowired
	MyTravelTimeService myTravelTimeService;
	
	@ResponseBody
	@RequestMapping("/list")
	public Map<String,Object> travelList(){
		List<MyTravelTimeVo> list=myTravelTimeService.travelList();
		Map<String,Object> map=new HashMap<String, Object>();
		map.put("jsonTxt", list);
		return map;
	}
	
	@ResponseBody
	@RequestMapping("/add")
	public Map<String, Object> travelAdd(@ModelAttribute MyTravelTimeVo vo){		
		MyTravelTimeVo myTravelTimeVo=myTravelTimeService.insert(vo);		
		Map<String,Object> map=new HashMap<String, Object>();
		map.put("result", "success");
		map.put("data", myTravelTimeVo);
		return map;
	}
	
	@ResponseBody
	@RequestMapping(value="/remove", method=RequestMethod.POST)
	public Map<String, Object> travelRemove(
			@RequestParam(value = "travelNo", required = true, defaultValue = "") long travelNo){
		long result = myTravelTimeService.delete(travelNo);
		Map<String, Object> map=new HashMap<String, Object>();
		map.put("result", "success");
		map.put("data", result);
		return map;
	}
	
	@ResponseBody
	@RequestMapping("/modify")
	public Map<String, Object> travelModify(@ModelAttribute MyTravelTimeVo vo){
		long result=myTravelTimeService.modify(vo);
		Map<String, Object> map=new HashMap<String, Object>();
		map.put("result", "success");
		map.put("data", result);
		return map;
	}
	
	@ResponseBody
	@RequestMapping("/get")
	public Map<String, Object> travelGet(@ModelAttribute MyTravelTimeVo vo){
		MyTravelTimeVo myTravelTimeVo =myTravelTimeService.get(vo);
		Map<String, Object> map=new HashMap<String, Object>();
		map.put("result", "success");
		map.put("get", myTravelTimeVo);
		return map;
	}
	
}
