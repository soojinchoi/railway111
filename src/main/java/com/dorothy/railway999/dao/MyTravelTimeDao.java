package com.dorothy.railway999.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.dorothy.railway999.vo.MyTravelTimeVo;

@Repository
public class MyTravelTimeDao {
	@Autowired
	SqlSession sqlSession;
	
	
	public List<MyTravelTimeVo> list(){
		List<MyTravelTimeVo> list=sqlSession.selectList("travel.list");
		return list;
	}
	
	public MyTravelTimeVo insert(MyTravelTimeVo vo){
		sqlSession.insert("travel.insert",vo);
		MyTravelTimeVo myTravelTimeVo=sqlSession.selectOne("travel.selectByid",vo.getId());
		return myTravelTimeVo;
	}
	
	public long delete(long travelNo){
		return sqlSession.delete("travel.delete", travelNo);
	}	
	
	public long update(MyTravelTimeVo vo){
		return sqlSession.update("travel.modify", vo);
	}
	public MyTravelTimeVo get(MyTravelTimeVo vo){
		MyTravelTimeVo myTravelTimeVo=sqlSession.selectOne("travel.listByTravelNo",vo);
		return myTravelTimeVo;		
	}

}
