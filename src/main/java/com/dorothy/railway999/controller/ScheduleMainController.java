package com.dorothy.railway999.controller;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;



@Controller
@RequestMapping("/scheduleMain")
public class ScheduleMainController {
	@RequestMapping("/search")
	public String StationList(){
		return "/schedule/addschedule";
	}
	@RequestMapping("/myschedule")
	public String MyScheduleList(){
		return "/schedule/myschedule";
	}
}




