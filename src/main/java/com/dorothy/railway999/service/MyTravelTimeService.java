package com.dorothy.railway999.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dorothy.railway999.dao.MyTravelTimeDao;
import com.dorothy.railway999.vo.MyTravelTimeVo;

@Service
public class MyTravelTimeService {
	@Autowired
	MyTravelTimeDao myTravelTimeDao;
	
	public List<MyTravelTimeVo> travelList(){
		List<MyTravelTimeVo> list=myTravelTimeDao.list();
		return list;
	}
	
	public MyTravelTimeVo insert(MyTravelTimeVo vo){
		MyTravelTimeVo myTravelTimeVo=myTravelTimeDao.insert(vo);
		return myTravelTimeVo;
	}
	
	public long delete (long travelNo){
		return myTravelTimeDao.delete(travelNo);
	}
	
	public long modify(MyTravelTimeVo vo){
		return myTravelTimeDao.update(vo);
	}
	public MyTravelTimeVo get(MyTravelTimeVo vo){
		MyTravelTimeVo myTravelTimeVo=myTravelTimeDao.get(vo);
		return myTravelTimeVo;
	}
	
}
