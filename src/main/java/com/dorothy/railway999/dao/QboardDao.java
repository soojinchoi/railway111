package com.dorothy.railway999.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.dorothy.railway999.vo.QboardVo;
import com.dorothy.railway999.vo.QcommentsVo;

@Repository
public class QboardDao {
	
	@Autowired
	private SqlSession sqlSession;
	
	// insert,delete, update,count,
	public void insert( QboardVo vo) {
		sqlSession.insert( "qboard.insert", vo);
	}
	
	//update
	public void update( QboardVo vo) {
		sqlSession.update("qboard.update", vo);
	}
	
	public void delete( long no) {
		sqlSession.delete("qboard.delete", no);
	}
	
	public void viewcnt ( QboardVo vo ) {
		sqlSession.update("qboard.viewcnt", vo);
	}
	
	public int totalCount(Map<String, Object> queryMap){

		return sqlSession.selectOne("qboard.total", queryMap);
	}
	
	public QboardVo view(QboardVo vo) {
		return sqlSession.selectOne("qboard.view" , vo );
		
	}

	//게시글리스트
	public List<QboardVo> getList(){

		return sqlSession.selectList("qboard.list");
	}
	
	//댓글리스트
	/*public List<QcommentsVo> CommentList() {
		List<FreecommentVo> list = sqlSession.selectList( "freecomments.commentList");
		return list;
	}
	*/
	
	public List<QboardVo> getList(Map<String, Object> queryMap){
		return sqlSession.selectList("qboard.listPage", queryMap);
	}
	
	public QboardVo getContent(long no){
		return sqlSession.selectOne("qboard.getByNo", no);
	}
	
	
	//comments
	public List<QcommentsVo> CommentList() {
		List<QcommentsVo> list = sqlSession.selectList("qcomments.commentList");
		System.out.println(list);
		return list;
	}
	
	//coinsert
	public QcommentsVo Coinsert( QcommentsVo vo ) {
		
		sqlSession.insert( "qcomments.insert", vo );
	
		
		QcommentsVo qcommentsVo = sqlSession.selectOne( "qcomments.getbyno", vo.getQcommentsno() );
		
		return qcommentsVo;
	}
	
	//codelete
    public void Codelete (QcommentsVo vo ) {
    	sqlSession.delete("qcomments.delete", vo );
    	
	}

	
/*	
 * 	public void delete( long no) {
		sqlSession.delete("qboard.delete", no);
	}
	
 * //프리보드dao commentist
	//sqlSession.selectList인지 commentList인지
	public List<QcommentsVo> commentList() {
		List<QCommentsVo> list = sqlSession.commentList (" qcomments.commentList");
		return list;
		
	}
	
	//freeboarddao 67번째줄 guestbook오타
	//잘모르겠음
	public QcommentsVo insert( QcommentsVo vo ) {
		sqlSession.insert( "dd.insert", vo );
		QcommentsVo qcommentsVo = sqlSession.selectOne( "//.selectbyno", vo.getNo() );
		
		return QcommentsVo;
	
	}*/
	
}
