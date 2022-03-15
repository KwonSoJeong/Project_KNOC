package controller;

import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.oreilly.servlet.MultipartRequest;

import model.Class_Content;
import model.Classes;
import model.Knoc_Member;
import service.Class_ContentDao;
import service.ClassesDao;

//@WebServlet("/classes/*")
public class ClassesController extends MskimRequestMapping {
	
	// main화면 view
	@RequestMapping("main")
	public String memberInput(HttpServletRequest request, HttpServletResponse response) {
		ClassesDao cd = new ClassesDao();
		
		List<Classes> newClassList = cd.sortedClassList("regdate");
		List<Classes> favoriteClassList = cd.sortedClassList("favorite");
		
		request.setAttribute("newClassList", newClassList);
		request.setAttribute("favoriteClassList", favoriteClassList);
		return "/view/main.jsp";
	}
	
	// 클래스 리스트 view
	@RequestMapping("classList")
	public String classList(HttpServletRequest request, HttpServletResponse response) {
		ClassesDao cd = new ClassesDao();
		
		String category = request.getParameter("category_id");
		String title = request.getParameter("title");
		
		// 카테고리를 전달하지 않고 view를 출력하면 전체 리스트 반환
		List<Classes> classList = cd.classList();
		
		// 카테고리를 전달하고 view를 출력하면 해당 카테고리에 맞는 리스트 반환
		if (category != null) {
			classList = cd.classifiedList(category); 
		}
		
		// 검색어를 입력하고 view를 출력하면 해당 단어가 제목에 포함된 리스트 반환
		if (title.trim() != null) {
			classList = cd.searchedList(title);
		}
		
		request.setAttribute("classList", classList);
		
		return "/view/classes/classListTest.jsp";
	}
	
	// 신규 클래스 등록 view
	@RequestMapping("classUpload")
	public String classUpload(HttpServletRequest request, HttpServletResponse response) {
		HttpSession session = request.getSession();
		
		String id = (String) session.getAttribute("memid");
		
		if (id == null) {
			String msg = "로그인 정보가 없습니다.";
			String url = request.getContextPath() + "/member/login";
			
			request.setAttribute("msg", msg);
			request.setAttribute("url", url);
			
			return "/view/alert.jsp";
		}
		
		return "/view/classes/classUpload.jsp";
	}
	
	// 신규 클래스 등록 process
	@RequestMapping("classUploadPro")
	public String classUploadPro(HttpServletRequest request, HttpServletResponse response) {
		HttpSession session = request.getSession();
		
		try {
			request.setCharacterEncoding("utf-8");
		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		String id = (String) session.getAttribute("memid");
		
		// 클래스 객체 생성
		MultipartRequest multi = null;
		String path = request.getServletContext().getRealPath("/") + "/contentfile/";
		try {
			multi = new MultipartRequest(request, path, 30 * 1024 * 1024, "UTF-8");
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		ClassesDao cl_d = new ClassesDao();
	
		Classes newClass = new Classes();

		newClass.setClass_id("class" + cl_d.newClassNum());
		newClass.setLec_id(id);
		newClass.setTitle(multi.getParameter("title"));
		newClass.setIntro(multi.getParameter("intro"));
		newClass.setCategory_id(multi.getParameter("caterory_id"));
		newClass.setType(Integer.parseInt(multi.getParameter("type")));
		newClass.setPrice(Integer.parseInt(multi.getParameter("price")));
		newClass.setThumbnail(multi.getParameter("thumbnail"));
		
		int classResult = cl_d.classUpload(newClass);
		
		// 각 차시 별 객체 생성
		int contentResult = 0;
		
		Class_ContentDao con_d = new Class_ContentDao();
		
		Classes classone = cl_d.classOne(newClass.getClass_id());
		
		if (classone != null) {
			// 현재는 3차시까지 입력받도록 되어있음
			for (int i = 1; i <= 3; i++) {
				Class_Content newContent = new Class_Content();

				newContent.setClass_Id(newClass.getClass_id());
				newContent.setContent_Id("content" + con_d.newContentNum());
				newContent.setNo(i);
				newContent.setTitle(multi.getParameter("title" + i));
				newContent.setFile1(multi.getFilesystemName("file" + i));

				if (con_d.contentUpload(newContent) > 0) {
					contentResult++;
				}
			}
		}
		String msg = "클래스 등록에 실패하였습니다.";
		String url = request.getContextPath() + "/classes/classUpload";
		
		// 클래스도 정상 등록, 컨텐츠도 3차시까지 정상 등록일 경우
		if (classResult > 0 && contentResult == 3) {
			msg = "클래스가 정상적으로 등록되었습니다.";
			url = request.getContextPath() + "/classes/classInfo?class_id=" + newClass.getClass_id();
		}
		
		request.setAttribute("msg", msg);
		request.setAttribute("url", url);

		return "/view/alert.jsp";
	}

	// 클래스 썸네일 등록 view
	@RequestMapping("thumbnailForm")
	public String thumbnailForm(HttpServletRequest request, HttpServletResponse response) {

		return "/single/thumbnailForm.jsp";
	}

	// 클래스 썸네일 등록 process
	@RequestMapping("thumbnailPro")
	public String thumbnailPro(HttpServletRequest request, HttpServletResponse response) {

		try {
			request.setCharacterEncoding("UTF-8");
		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		String path = request.getServletContext().getRealPath("/") + "thumbnail/";

		MultipartRequest multi = null;

		try {
			multi = new MultipartRequest(request, path, 10 * 1024 * 1024, "UTF-8");
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		String filename = multi.getFilesystemName("thumbnail");

		request.setAttribute("filename", filename);

		return "/single/thumbnailPro.jsp";
	}

	// 클래스 상세 view 
	@RequestMapping("classInfo")
	public String classInfo(HttpServletRequest request, HttpServletResponse response) {
		String classId = request.getParameter("class_id");
		ClassesDao cd = new ClassesDao();
		Classes classone = cd.classOne(classId);
		
		// parameter로 전달된 classId는 session에 저장, content view 출력 시 활용
		HttpSession session = request.getSession();
		session.setAttribute("classId", classId);
		
		request.setAttribute("class", classone);
		return "/view/classes/classInfo.jsp";
	}
	
	// 클래스 수강 view
	@RequestMapping("classContent")
	public String classContent(HttpServletRequest request, HttpServletResponse response) {
		HttpSession session = request.getSession();
		String classId = (String) session.getAttribute("classId");
		String contentNo = request.getParameter("no");
		
		if (contentNo == null) {
			contentNo = "1";
		}
		
		Class_ContentDao cd = new Class_ContentDao();
		Class_Content contentOne = cd.contentOne(classId, contentNo);
		
		request.setAttribute("content", contentOne);
		
		return "/view/classes/classContent.jsp";
	}
}
