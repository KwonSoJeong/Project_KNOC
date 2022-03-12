package service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import model.Study;
import util.MyBatisConnection;

public class StudyDao {
	private final static String ns = "study.";
	
	public int nextNum() {
		SqlSession sqlSession = MyBatisConnection.getConnection();
		try {
			return sqlSession.selectOne(ns + "insertStudy");
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			MyBatisConnection.close(sqlSession);
		}
		return 0;
	}
	
	public int insertStudy(Study s) {
		SqlSession sqlSession = MyBatisConnection.getConnection();
		try {
			return sqlSession.insert(ns + "insertStudy", s);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			MyBatisConnection.close(sqlSession);
		}
		return 0;
	}
	
	public int studyCount(int process) {
		SqlSession sqlSession = MyBatisConnection.getConnection();
		try {
			return sqlSession.insert(ns + "studyCount", process);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			MyBatisConnection.close(sqlSession);
		}
		return 0;
	}
	
	public List<Study> studyList(int pageInt,int limit,int studyCount,int process) {
		SqlSession sqlSession = MyBatisConnection.getConnection();
		try {
			Map map = new HashMap();
			map.put("process", process);
			map.put("start", (pageInt-1)*limit+1);
			map.put("end", pageInt * limit); 
			return sqlSession.selectList(ns + "studyList", map);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			MyBatisConnection.close(sqlSession);
		}
		return null;
	}
	
	public List<Study> studyAllList(int pageInt,int limit,int studyCount) {
		SqlSession sqlSession = MyBatisConnection.getConnection();
		try {
			Map map = new HashMap();
			map.put("start", (pageInt-1)*limit+1);
			map.put("end", pageInt * limit);
			return sqlSession.selectList(ns + "studyAllList", map);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			MyBatisConnection.close(sqlSession);
		}
		return null;
	}
	
}
