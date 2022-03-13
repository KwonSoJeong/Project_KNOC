package service;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import model.Study_Comment;
import util.MyBatisConnection;

public class Study_CommentDao {
	private final static String ns = "study_comment.";
	
	public int insert(Study_Comment sc) {
		SqlSession sqlSession = MyBatisConnection.getConnection();
		try {
			return sqlSession.insert(ns + "insert",sc);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			MyBatisConnection.close(sqlSession);
		}
		return 0;
	}
	
	public List<Study_Comment> selectComment(int refNum) {
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
	
	public int count(int refNum) {
		SqlSession sqlSession = MyBatisConnection.getConnection();
		try {
			return sqlSession.selectOne(ns + "count",refNum);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			MyBatisConnection.close(sqlSession);
		}
		return 0;
	}
	
	public List<String> callProfile(int refNum) {
		SqlSession sqlSession = MyBatisConnection.getConnection();
		try {
			return sqlSession.selectList(ns + "callProfile",refNum);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			MyBatisConnection.close(sqlSession);
		}
		return null;
	}
	
	
	
	
}
