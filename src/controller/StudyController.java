package controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Study;
import service.StudyDao;

//@WebServlet("/study/*")
public class StudyController extends MskimRequestMapping {
	static String msg ="";
	static String url ="";
	
	@RequestMapping("studyWrite")
	public String studyWrite(HttpServletRequest request, HttpServletResponse response) {

		return "/view/study/studyWrite.jsp";
	}
	
	@RequestMapping("studyWritePro")
	public String studyWritePro(HttpServletRequest request, HttpServletResponse response) {
		Study s = new Study();
		StudyDao sd = new StudyDao();
		String writerId = (String) request.getSession().getAttribute("memid");
		String id = "study"+sd.nextNum();
		s.setStudy_Id(id);
		s.setLeader_Id(writerId);
		s.setTitle(request.getParameter("title"));
		s.setContent(request.getParameter("text"));
		int num = sd.insertStudy(s);
		if(num>0) { //게시글 작성 성공
			msg = "게시글이 등록되었습니다.";
			url = request.getContextPath()+"/study/studyList";
		}else{	//게시글 등록 실패
			msg = "게시글 등록 실패";
			url = request.getContextPath()+"/study/studyWirte";
		}
		request.setAttribute("msg", msg);
		request.setAttribute("url", url);
		return "/view/alert.jsp";
	}
	
	@RequestMapping("studyList")
	public String studyList(HttpServletRequest request, HttpServletResponse response) {
		int process = 3;  //process = 1 :모집중, process = 2 : 모집완료, process = 3 : 전체
		if(request.getParameter("process")!=null) {
			process = Integer.parseInt(request.getParameter("process"));
		}
		int pageInt = 1;
		int limit = 13;
		StudyDao sd = new StudyDao();
		int studyCount = sd.studyCount(process);
		List<Study> list;
		if(process==3) {
			list = sd.studyAllList(pageInt,limit,studyCount);
		}else {
			list = sd.studyList(pageInt,limit,studyCount,process);
		}
		
		request.setAttribute("list", list);
		return "/view/study/studyList.jsp";
	}
}
