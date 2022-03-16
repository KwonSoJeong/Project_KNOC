package controller;

import java.io.UnsupportedEncodingException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import model.Qna;
import model.Qna_Comment;
import service.QnaDao;
import service.Qna_CommentDao;


//@WebServlet("/help/*")
public class HelpController extends MskimRequestMapping {
	
	static String msg = "";
	static String url = "";

	// qnalsit view
	@RequestMapping("qnaList")
	public String qnaList(HttpServletRequest request, HttpServletResponse response) {
		try {
			request.setCharacterEncoding("UTF-8");
		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		int limit = 3; //한 페이지에 보이는 게시글 수
		
		//페이지 받아오기
		String pageNum=""; 
		if(request.getParameter("pageNum")!=null) {
			pageNum = request.getParameter("pageNum");
		}else {
			pageNum = "1";
		}
		int pageInt = Integer.parseInt(pageNum);
		
		QnaDao qd = new QnaDao();
		List<Qna> list = qd.qnaList(pageInt,limit);
		
		int bottomLine = 5; //최대 페이징 수
		
		int qnaCount = qd.qnaCount();
		int startPage = (pageInt - 1)/bottomLine * bottomLine + 1;
		int endPage = startPage + bottomLine -1;
		int maxPage = (qnaCount/limit)+(qnaCount%limit == 0?0:1);
		if(endPage>maxPage) endPage = maxPage;
		
		request.setAttribute("startPage", startPage);
		request.setAttribute("bottomLine", bottomLine);
		request.setAttribute("endPage", endPage);
		request.setAttribute("maxPage", maxPage);
		request.setAttribute("list", list);
		return "/view/help/qnaList.jsp";
	}
	
	// qnaboard view
	@RequestMapping("qnaInfo")
	public String mentorInfo(HttpServletRequest request, HttpServletResponse response) {
		try {
			request.setCharacterEncoding("UTF-8");
		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		QnaDao qd = new QnaDao();
		Qna q = new Qna();
		Qna_CommentDao qcd = new Qna_CommentDao();
		       
		String qnaId = request.getParameter("qna_Id");
		q = qd.selectOne(qnaId);
		
		q.getQna_Id();
		int refNum = Integer.parseInt(qnaId.substring(3));
		List<Qna_Comment> commentlist = qcd.selectComment(refNum);
		
		
		
		request.setAttribute("q", q);
		return "/view/mentor/mentorInfo.jsp";
	}
	
	/*
	 * // qnaboardwrite view
	 * 
	 * @RequestMapping("qnaWrite") public String qnaWrite(HttpServletRequest
	 * request, HttpServletResponse response) {
	 * 
	 * return "/view/help/qnaWrite.jsp"; }
	 */
	
	// qnaboardwrite process
	@RequestMapping("qnaWritePro")
	public String qnaWritePro(HttpServletRequest request, HttpServletResponse response) {
		try {
			request.setCharacterEncoding("UTF-8");
		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		Qna q = new Qna();
		QnaDao qd = new QnaDao();
		
		String writerId = (String)request.getSession().getAttribute("memid");
		String qnaId = "qna"+qd.nextNum();
		
		q.setQna_Id(qnaId);
		q.setContent(request.getParameter("content")); //임시
		q.setSecret(Integer.parseInt(request.getParameter("secret"))); //임시
		q.setTitle(request.getParameter("title")); //임시
		q.setWriter(writerId);
		
		qd.insert(q);
		
		/*
		 * if(num>0) { //게시글 작성 완료 msg = "QnA 질문이 등록 되었습니다."; url =
		 * request.getContextPath()+"/qna/qnaList"; }else { msg = "게시글 등록 실패"; url =
		 * request.getContextPath()+"/qna/qnaWrite"; }
		 */
		
		request.setAttribute("msg", msg);
		request.setAttribute("url", url);
		return "/view/alert.jsp";
	}
	
	
}
