package controller;

import java.io.UnsupportedEncodingException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Knoc_Member;
import service.Knoc_MemberDao;

//@WebServlet("/member/*")
public class MemberController extends MskimRequestMapping {
	static String msg = "";
	static String url = "";

	@RequestMapping("memberInput")
	public String memberInput(HttpServletRequest request, HttpServletResponse response) {

		return "/view/member/memberInput.jsp";
	}

	@RequestMapping("memberInputPro")
	public String memberInputPro(HttpServletRequest request, HttpServletResponse response) {
		try {
			request.setCharacterEncoding("UTF-8");
		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		Knoc_MemberDao md = new Knoc_MemberDao();
		Knoc_Member m = new Knoc_Member();
		Knoc_Member chk = new Knoc_Member();
		chk = md.selectOne(request.getParameter("id"));
		if (chk == null) {
			m.setId(request.getParameter("id"));
			m.setEmail(request.getParameter("email"));
			m.setName(request.getParameter("name"));
			m.setProfile("");
			m.setPwd(request.getParameter("pwd"));
			m.setTel(request.getParameter("tel"));
			int num = md.insertMember(m);
			if (num > 0) { // 회원가입 성공
				msg = "회원 가입이 완료되었습니다.";
				url = request.getContextPath() + "/member/login";
			} else { // 가입 실패
				msg = "회원 가입이 실패 하였습니다.";
				url = request.getContextPath() + "/member/login";
			}
		} else {
			msg = "이미 존재하는 ID 입니다";
			url = request.getContextPath() + "/member/memberInput";
		}

		request.setAttribute("msg", msg);
		request.setAttribute("url", url);
		return "/view/alert.jsp";
	}

	@RequestMapping("login")
	public String login(HttpServletRequest request, HttpServletResponse response) {

		return "/view/member/login.jsp";
	}

	@RequestMapping("loginPro")
	public String loginPro(HttpServletRequest request, HttpServletResponse response) {
		String id = request.getParameter("id");
		String pwd = request.getParameter("pwd");

		Knoc_MemberDao md = new Knoc_MemberDao();
		Knoc_Member m = md.selectOne(id);

		if (m != null) { // 계정이 존재함
			if (m.getPwd().equals(pwd)) { // 패스워드가 일치함
				request.getSession().setAttribute("memid", id);
				msg = "로그인 되었습니다.";
				url = request.getContextPath() + "/classes/main";
			} else { // 패스워드 불일치
				msg = "비밀번호를 확인해 주세요";
				url = request.getContextPath() + "/member/login";
			}
		} else { // 계정이 존재하지 않음
			msg = "아이디를 확인해 주세요";
			url = request.getContextPath() + "/member/login";
		}
		request.setAttribute("msg", msg);
		request.setAttribute("url", url);
		return "/view/alert.jsp";
	}

	@RequestMapping("logout")
	public String logout(HttpServletRequest request, HttpServletResponse response) {
		request.getSession().invalidate();
		msg = "로그아웃 되었습니다.";
		url = request.getContextPath() + "/classes/main";
		request.setAttribute("msg", msg);
		request.setAttribute("url", url);
		return "/view/alert.jsp";
	}

}
