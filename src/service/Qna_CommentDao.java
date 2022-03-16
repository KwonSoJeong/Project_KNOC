package service;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import model.Qna_Comment;
import util.MyBatisConnection;

public class Qna_CommentDao {
	private final static String ns = "qna_comment.";
	
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
}
