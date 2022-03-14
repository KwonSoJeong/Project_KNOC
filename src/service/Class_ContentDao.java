package service;

import org.apache.ibatis.session.SqlSession;

import model.Class_Content;
import util.MyBatisConnection;

public class Class_ContentDao {
	private final static String ns = "class_content.";

	// 신규 컨텐츠 아이디 생성을 위해 시퀀스 다음 번호 반환
	public int newContentNum() {
		SqlSession sqlSession = MyBatisConnection.getConnection();

		try {
			return sqlSession.selectOne(ns + "newContentNum");
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			MyBatisConnection.close(sqlSession);
		}

		return 0;
	}
	
	// 신규 컨텐츠 등록
	public int contentUpload(Class_Content newContent) {
		SqlSession sqlSession = MyBatisConnection.getConnection();
		
		try {
			return sqlSession.insert(ns + "contentUpload", newContent);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			MyBatisConnection.close(sqlSession);
		}

		return 0;
	}
}
