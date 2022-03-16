package controller;

import java.io.UnsupportedEncodingException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Knoc_Member;
import model.Mentoring;
import service.Knoc_MemberDao;
import service.MentoringDao;
import service.StudyDao;

//@WebServlet("/mentor/*")
public class MentorController extends MskimRequestMapping {
	static String msg = "";
	static String url = "";

	
	// 멘토링 리스트 뷰
		@RequestMapping("mentorList")
		public String mentorList(HttpServletRequest request, HttpServletResponse response) {
			MentoringDao mtd = new MentoringDao();
			List<Mentoring> mt = mtd.selectList();
			
			System.out.println(mt);
			request.setAttribute("mt", mt);
			return "/view/mentor/mentorList.jsp";
		}

	// 멘토링 등록 view
	@RequestMapping("mentorRegister")
	public String mentorRegister(HttpServletRequest request, HttpServletResponse response) {

		String memid = (String) request.getSession().getAttribute("memid");
		if (memid == null) {
			msg = "로그인이 필요한 서비스 입니다.";
			url = request.getContextPath()+"/member/login";
			request.setAttribute("msg", msg);
			request.setAttribute("url", url);
			return "/view/alert.jsp";
		}

		return "/view/mentor/mentorRegister.jsp";
	}
	// 멘토링 등록 process
	@RequestMapping("mentorRegisterPro")
	public String mentorRegisterPro(HttpServletRequest request, HttpServletResponse response) {
		try {
			request.setCharacterEncoding("UTF-8");
		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		Mentoring m = new Mentoring();
		MentoringDao md = new MentoringDao();
		Knoc_MemberDao memdao = new Knoc_MemberDao();
		Knoc_Member mem = new Knoc_Member();

		String id = (String) request.getSession().getAttribute("memid");
		mem = memdao.selectOne(id);

		String mentoringId = "mentoring" + md.nextNum();

		m.setMentoring_Id(mentoringId);
		m.setMentor_Id(mem.getId());
		m.setContent(request.getParameter("content"));
		m.setIntro(request.getParameter("intro"));

		System.out.println(m);
		int num = md.insert(m);

		if (num > 0) {
			msg = "멘토링이 등록이 완료되었습니다.";
			url = request.getContextPath() + "/mentor/mentorList";
		} else {
			msg = "등록오류";
			url = request.getContextPath() + "/mentor/mentorRegister";
		}

		request.setAttribute("msg", msg);
		request.setAttribute("url", url);
		return "/view/alert.jsp";
	}
	
	// 멘토링 상세정보 view
	@RequestMapping("mentorInfo")
	public String mentorInfo(HttpServletRequest request, HttpServletResponse response) {
		try {
			request.setCharacterEncoding("UTF-8");
		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		MentoringDao md = new MentoringDao();
		Mentoring m = new Mentoring();
		StudyDao sd = new StudyDao(); //작성자 프로필이미지를 불러오기 위함
		
		String id = request.getParameter("mentoring_Id");
		m = md.selectOne(id);
		
		String profile = sd.callProfile(m.getMentor_Id());
		
		request.setAttribute("profile", profile);
		request.setAttribute("m", m);
		return "/view/mentor/mentorInfo.jsp";
	}
	
	
	

}
