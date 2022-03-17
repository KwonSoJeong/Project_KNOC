package service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import model.Qna_Comment;
import util.MyBatisConnection;

public class Qna_CommentDao {
	private final static String ns = "qna_comment.";
	private Map<String, Object> map = new HashMap<>();
	
	public List<Qna_Comment> selectComment(int refNum) {
		SqlSession sqlSession = MyBatisConnection.getConnection();
		try {
			return sqlSession.selectList(ns + "selectComment",refNum);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			MyBatisConnection.close(sqlSession);
		}
		return null;
	}
	
	public List countList(int pageInt, int limit) {
		SqlSession sqlSession = MyBatisConnection.getConnection();
		try {
			map.clear();
			map.put("start", (pageInt-1)*limit+1);
			map.put("end", pageInt * limit);
			return sqlSession.selectOne(ns + "count",map);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			MyBatisConnection.close(sqlSession);
		}
		return null;
	}
}
