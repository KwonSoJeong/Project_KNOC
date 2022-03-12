package service;

import org.apache.ibatis.session.SqlSession;

import model.Knoc_Member;
import util.MyBatisConnection;

public class Knoc_MemberDao {
	private final static String ns = "knoc_member.";

	public int insertMember(Knoc_Member m) {
		SqlSession sqlSession = MyBatisConnection.getConnection();
		try {
			return sqlSession.insert(ns + "insertMember", m);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			MyBatisConnection.close(sqlSession);
		}
		return 0;
	}
	
	public Knoc_Member selectOne(String id) {
		SqlSession sqlSession = MyBatisConnection.getConnection();
		try {
			return sqlSession.selectOne(ns + "selectOne", id);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			MyBatisConnection.close(sqlSession);
		}
		return null;
	}
	

}
