package service;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import model.Classes;
import util.MyBatisConnection;

public class ClassesDao {
	private final static String ns = "classes.";
	
	// 전체 classes 리스트 생성하여 반환
	public List<Classes> classList() {
		SqlSession sqlSession = MyBatisConnection.getConnection();
		
		try {
			return sqlSession.selectList(ns + "classList");
		} catch (Exception e) {
			// TODO: handle exception
		} finally {
			MyBatisConnection.close(sqlSession);
		}
		
		return null;
	}
	
	// 신규 클래스 아이디 생성을 위해 시퀀스 다음 번호 반환
	public int newClassNum() {
		SqlSession sqlSession = MyBatisConnection.getConnection();
		
		try {
			return sqlSession.selectOne(ns + "newClassNum");
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			MyBatisConnection.close(sqlSession);
		}
		
		return 0;
	}
	
	// 신규 클래스 등록
	public int classUpload(Classes newClass) {
		SqlSession sqlSession = MyBatisConnection.getConnection();
		
		try {
			return sqlSession.insert(ns + "classUpload", newClass);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			MyBatisConnection.close(sqlSession);
		}

		return 0;
	}

	// 클래스 아이디를 매개변수로 특정 클래스 조회
	public Classes classOne(String classId) {
		SqlSession sqlSession = MyBatisConnection.getConnection();

		try {
			return sqlSession.selectOne(ns + "classOne", classId);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			MyBatisConnection.close(sqlSession);
		}

		return null;
	}

}
