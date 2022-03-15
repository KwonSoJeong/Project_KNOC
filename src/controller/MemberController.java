package controller;

import java.io.IOException;
import java.io.UnsupportedEncodingException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.oreilly.servlet.MultipartRequest;

import model.Knoc_Member;
import service.Knoc_MemberDao;

//@WebServlet("/member/*")
public class MemberController extends MskimRequestMapping {
	static String msg = "";
	static String url = "";
	
	// 회원가입 view
	@RequestMapping("memberInput")
	public String memberInput(HttpServletRequest request, HttpServletResponse response) {

		return "/view/member/memberInput.jsp";
	}
	
	// 회원가입 process
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
			m.setProfile(request.getParameter("profile"));
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
	
	// 회원가입, 수정 시 프로필 사진 등록 view
	@RequestMapping("pictureForm")
	public String pictureForm(HttpServletRequest request, HttpServletResponse response) {
		
		return "/single/pictureForm.jsp";
	}
	
	// 프로필 사진 등록 process
	@RequestMapping("picturePro")
	public String picturePro(HttpServletRequest request, HttpServletResponse response) {
		
		try {
			request.setCharacterEncoding("UTF-8");
		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		String path = request.getServletContext().getRealPath("/")+"profile/";
		
		MultipartRequest multi = null;
		
		try {
			multi = new MultipartRequest(request, path, 10*1024*1024, "UTF-8");
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		String filename = multi.getFilesystemName("profile");
		
		request.setAttribute("filename", filename);
		
		return "/single/picturePro.jsp";
	}
	
	@RequestMapping("login")
	public String login(HttpServletRequest request, HttpServletResponse response) {

		return "/view/member/login.jsp";
	}

	@RequestMapping("loginPro")
	public String loginPro(HttpServletRequest request, HttpServletResponse response) {
		String id = request.getParameter("id");
		String pwd = request.getParameter("pwd");
		
		try {
			request.setCharacterEncoding("utf-8");
		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

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
	
	// 회원정보 수정 view
	@RequestMapping("memberUpdate")
	public String memberUpdate(HttpServletRequest request, HttpServletResponse response) {
		
		HttpSession session = request.getSession();
		String memid = (String) session.getAttribute("memid");
		
		String msg = "로그인 정보가 없습니다.";
		String url = request.getContextPath()+"/member/login";
		
		if (memid != null) {
			Knoc_MemberDao md = new Knoc_MemberDao();
			
			Knoc_Member member = md.selectOne(memid);
			request.setAttribute("member", member);
			
			return "/view/member/memberUpdate.jsp";
		}
		
		request.setAttribute("msg", msg);
		request.setAttribute("url", url);
		
		return "/view/alert.jsp";
	}

	// 회원정보 수정 process
	@RequestMapping("memberUpdatePro")
	public String memberUpdatePro(HttpServletRequest request, HttpServletResponse response) {
		
		try {
			request.setCharacterEncoding("utf-8");
		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		String pwd = request.getParameter("pwd");
		String id = request.getParameter("id");
		
		String msg = "비밀번호가 일치하지 않습니다.";
		String url = request.getContextPath() + "/member/memberUpdate";
		
		Knoc_MemberDao md = new Knoc_MemberDao();
		Knoc_Member mem = md.selectOne(id);

		if (mem.getPwd().equals(pwd)) {

			mem.setName(request.getParameter("name"));
			mem.setEmail(request.getParameter("email"));
			mem.setTel(request.getParameter("tel"));
			mem.setProfile(request.getParameter("profile"));

			int num = md.updateMember(mem);

			if (num > 0) {
				msg = "회원정보가 수정되었습니다.";
			} else {
				msg = "회원정보 수정에 실패하였습니다.";
			}
		}
		
		request.setAttribute("msg", msg);
		request.setAttribute("url", url);
		
		return "/view/alert.jsp";
	}
	
	// 비밀번호 수정 view
	@RequestMapping("password")
	public String password(HttpServletRequest request, HttpServletResponse response) {
		HttpSession session = request.getSession();
		
		String id = (String) session.getAttribute("memid");
		
		if (id == null) {
			String msg = "로그인 정보가 없습니다.";
			String url = request.getContextPath() + "/member/login";
			
			request.setAttribute("msg", msg);
			request.setAttribute("url", url);
			
			return "/view/alert.jsp";
			
		}
		
		return "/view/member/password.jsp";
	}
	
	// 비밀번호 수정 process
	@RequestMapping("passwordPro")
	public String passwordPro(HttpServletRequest request, HttpServletResponse response) {
		HttpSession session = request.getSession();

		String id = (String) session.getAttribute("memid");
		String pwd = request.getParameter("pwd");
		String newPwd = request.getParameter("newpwd");

		Knoc_MemberDao md = new Knoc_MemberDao();
		Knoc_Member mem = md.selectOne(id);
		
		String msg = "비밀번호가 일치하지 않습니다.";
		String url = request.getContextPath() + "/member/password";
		
		if (mem.getPwd().equals(pwd)) {
			mem.setPwd(newPwd);
			int num = md.updatePwd(mem);
			
			if (num > 0) {
			msg = "비밀번호가 수정되었습니다.";
			url = request.getContextPath() + "/member/memberUpdate";
			
			} else {
				msg= "비밀번호 수정에 실패하였습니다.";
			}
		}
		
		request.setAttribute("msg", msg);
		request.setAttribute("url", url);

		return "/view/alert.jsp";
	}

	// 회원탈퇴 view
	@RequestMapping("memberDelete")
	public String memberDelete(HttpServletRequest request, HttpServletResponse response) {
		HttpSession session = request.getSession();

		String id = (String) session.getAttribute("memid");

		if (id == null) {
			String msg = "로그인 정보가 없습니다.";
			String url = request.getContextPath() + "/member/login";

			request.setAttribute("msg", msg);
			request.setAttribute("url", url);

			return "/view/alert.jsp";

		}
		Knoc_MemberDao md = new Knoc_MemberDao();
		Knoc_Member member = md.selectOne(id);

		request.setAttribute("member", member);

		return "/view/member/memberDelete.jsp";
	}
	
	// 회원탈퇴 process
	@RequestMapping("memberDeletePro")
	public String memberDeletePro(HttpServletRequest request, HttpServletResponse response) {
		HttpSession session = request.getSession();

		String id = request.getParameter("id");
		String pwd = request.getParameter("pwd");

		Knoc_MemberDao md = new Knoc_MemberDao();
		Knoc_Member mem = md.selectOne(id);
		
		String msg = "비밀번호가 일치하지 않습니다.";
		String url = request.getContextPath() + "/member/memberDelete";

		if (mem.getPwd().equals(pwd)) {
			int num = md.deleteMember(mem);

			if (num > 0) {
				session.invalidate();

				msg = "탈퇴가 완료되었습니다.";
				url = request.getContextPath() + "/classes/main";
			} else {
				msg = "탈퇴에 실패하였습니다.";
			}
		}

		request.setAttribute("msg", msg);
		request.setAttribute("url", url);

		return "/view/alert.jsp";
	}
	
}
