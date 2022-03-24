package controller;

import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.Enumeration;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import model.Class_Content;
import model.Classes;
import model.Knoc_Member;
import model.Member_Study_Info;
import model.WebChat;
import model.WishList;
import service.CategoryDao;
import service.Class_ContentDao;
import service.ClassesDao;
import service.Member_Study_InfoDao;
import service.WebChatDao;
import service.WishListDao;

//@WebServlet("/classes/*")
public class ClassesController extends MskimRequestMapping {
	
	// main화면 view
	@RequestMapping("main")
	public String main(HttpServletRequest request, HttpServletResponse response) {
		HttpSession session = request.getSession();
		String userId = (String) session.getAttribute("memid");
		String groupId = userId;
		
		if (userId == null) {
			groupId = "";
		}
		
		ClassesDao cd = new ClassesDao();
		
		WebChatDao wcd = new WebChatDao();
		
		// 일반 사용자의 경우, 문의톡 아이콘을 눌렀을 때 바로 대화 내용 출력
		List<WebChat> chatList = wcd.chatList(groupId);
		// 관리자(admin)일 경우, 문의톡 아이콘을 눌렀을 때 우선 문의한 유저 리스트가 먼저 출력
		List<String> groupList = wcd.groupList();
		
		WishListDao wld = new WishListDao();
		if (userId != null) {
			List<Map<String, Object>> wishList = wld.wishListOne(userId);
			request.setAttribute("wishList", wishList);
		}
		List<Classes> newClassList = cd.sortedClassList("regdate");
		List<Classes> favoriteClassList = cd.sortedClassList("favorite");
		
		request.setAttribute("userId", userId);
		request.setAttribute("groupId", groupId);
		request.setAttribute("chatList", chatList);
		request.setAttribute("groupList", groupList);
		request.setAttribute("newClassList", newClassList);
		request.setAttribute("favoriteClassList", favoriteClassList);
		
		return "/view/main.jsp";
	}
	
	// main화면 문의톡에서 img 업로드 할 때 사용할 페이지 
	@RequestMapping("imgUpload")
	public String imgUpload(HttpServletRequest request, HttpServletResponse response) {
		String path = getServletContext().getRealPath("/") + "chatimg/";
		MultipartRequest multi = null;
		
		try {
			request.setCharacterEncoding("utf-8");
		} catch (UnsupportedEncodingException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		
		try {
			multi = new MultipartRequest(request, path, 10*1024*1024, "utf-8", new DefaultFileRenamePolicy());
		} catch (IOException e) {
			e.printStackTrace();
		}
		
		String groupId = multi.getParameter("groupId");
		String userId = multi.getParameter("userId");
		String filename = multi.getFilesystemName("file");
		request.setAttribute("filename", filename);
		
		return "/single/imgUpload.jsp";
	}
	
	// main화면 문의톡에서 admin 계정에서 사용할 문의한 고객 리스트 전달
	@RequestMapping("adminChat")
	public String adminChat(HttpServletRequest request, HttpServletResponse response) {
		HttpSession session = request.getSession();
		
		String groupId = request.getParameter("groupId");
		String userId = (String) session.getAttribute("memid");
		
		WebChatDao wcd = new WebChatDao();
		List<WebChat> chatList = wcd.chatList(groupId);
		
		request.setAttribute("groupId", groupId);
		request.setAttribute("userId", userId);
		request.setAttribute("chatList", chatList);
		
		return "/single/adminChat.jsp";
	}
	
	// 클래스 리스트 view
	@RequestMapping("classList")
	public String classList(HttpServletRequest request, HttpServletResponse response) {
		// HttpSession session = request.getSession();
		ClassesDao cd = new ClassesDao();
		String pageNum = request.getParameter("pageInt");
		
		// page 번호를 지정하지 않았을 시 1페이지부터 시작
		int pageInt = 1;//얘를 2로 바꿔서 다오에서 리미트가 2인채로 받아오고싶은건데
		// 한 페이지 당 최대 12개 요소까지 출력
		int limit = 12;
		
		
		if (pageNum != null) {
			// session.setAttribute("pageNum", pageNum);
			pageInt = Integer.parseInt(pageNum);
		}
		
		
		String category = request.getParameter("category_id");
		String title = request.getParameter("search_keyword");
		
		// 카테고리를 전달하지 않고 view를 출력하면 전체 리스트 반환
		List<Classes> classList = cd.classList(pageInt, limit);
		System.out.println(classList.size());
		// 카테고리를 전달하고 view를 출력하면 해당 카테고리에 맞는 리스트 반환
		if (category != null) {
			classList = cd.classifiedList(category, pageInt, limit); 
		}
		
		// 검색어를 입력하고 view를 출력하면 해당 단어가 제목에 포함된 리스트 반환
		if (title != null) {
			classList = cd.searchedList(title, pageInt, limit);
		}
		
	//	request.setAttribute("pageInt", pageInt);
	//	request.setAttribute("limit", limit);
	//	request.setAttribute("size", classList.size());
		request.setAttribute("classList", classList);
		if (pageInt==1)  {
			return "/view/classes/classList.jsp";
		} else {
		return "/single/singleClass.jsp";}
		
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
			multi = new MultipartRequest(request, path, 300 * 1024 * 1024, "UTF-8", new DefaultFileRenamePolicy());
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
		String[] titleArr = multi.getParameterValues("contentTitle");
		
		List<String> fileList = new ArrayList<String>();
		int num = 1;
		
		while(fileList.size() < titleArr.length) {
			String filename = multi.getFilesystemName("file"+num);
			System.out.println(filename);
			
			if (filename == null) {
				num++;
				continue;
			}
			
			fileList.add(filename);
			
			num++;
		}
		
		
		int lastNum = titleArr.length;
		if (classone != null) {
			// 현재는 최대 10차시 까지 입력받도록 되어있음
			for (int i = 0; i < titleArr.length; i++) {
				Class_Content newContent = new Class_Content();
				
				newContent.setTitle(titleArr[i]);				
				newContent.setFile1(fileList.get(i));
				
				if(newContent.getFile1() == null) {
					newContent.setFile1("");
				}
				
				newContent.setClass_Id(newClass.getClass_id());
				newContent.setContent_Id("content" + con_d.newContentNum());
				
				if (con_d.contentUpload(newContent) > 0) {
					contentResult++;
				}
			}
		}
		
		String msg = "클래스 등록에 실패하였습니다.";
		String url = request.getContextPath() + "/classes/classUpload";
		
		// 클래스, 컨텐츠까지 정상 등록일 경우
		if (classResult > 0 && contentResult == lastNum) {
			msg = "클래스가 정상적으로 등록되었습니다.";
			url = request.getContextPath() + "/classes/classInfo?class_id=" + newClass.getClass_id();
			
			Member_Study_InfoDao msd = new Member_Study_InfoDao();
			Member_Study_Info msi = new Member_Study_Info(newClass.getLec_id(), newClass.getClass_id(), 1, msd.nextSeq());
			
			msd.insertInfo(msi);
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
			multi = new MultipartRequest(request, path, 10 * 1024 * 1024, "UTF-8", new DefaultFileRenamePolicy());
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
		
		CategoryDao cgd = new CategoryDao();
		String categoryName = cgd.selectCategoryName(classone.getCategory_id());
		
		Class_ContentDao ccd = new Class_ContentDao();
		List<Class_Content> contentList = ccd.contentList(classId);
		int contentNo = 1;
		// parameter로 전달된 classId는 session에 저장, content view 출력 시 활용
		HttpSession session = request.getSession();
		session.setAttribute("classId", classId);
		
		request.setAttribute("contentNo", contentNo);
		request.setAttribute("classone", classone);
		request.setAttribute("category", categoryName);
		request.setAttribute("contentList", contentList);
		return "/view/classes/classInfo.jsp";
	}
	
	// 클래스 수강신청 클릭 시 process
	@RequestMapping("classRegister")
	public String classRegister(HttpServletRequest request, HttpServletResponse response) {
		HttpSession session = request.getSession();

		String id = (String) session.getAttribute("memid");
		String class_id = (String) session.getAttribute("classId");
		// 수강신청을 눌렀을 때 로그인이 안되어있으면 로그인 화면으로 이동
		String msg = "로그인 후 이용 가능합니다.";
		String url = request.getContextPath() + "/member/login";
		
		ClassesDao cd = new ClassesDao();
		Classes classOne = cd.classOne(class_id);
		
		Member_Study_InfoDao msd = new Member_Study_InfoDao();
		Member_Study_Info msi = msd.infoOne(id, class_id);
		
		if (id != null) {
			// 수강신청을 눌렀을 때 수강신청이 되어있는 상태라면 바로 컨텐츠 화면으로 이동
			if (msi != null) {
				msg = "수강신청이 완료된 강의입니다. 수강 화면으로 이동합니다.";
				url = request.getContextPath() + "/classes/classContent";
			} else {
				// 수강신청을 눌렀을 때 수강신청이 안 되어 있으면 db 추가하고 수강신청 완료 메세지 출력 후 컨텐츠 화면으로 이동
				msg = "수강신청이 완료되었습니다.";
				url = request.getContextPath() + "/classes/classContent";
				
				Member_Study_Info newInfo = new Member_Study_Info(id, class_id, 2, msd.nextSeq());
				msd.insertInfo(newInfo);
			}

		}
		request.setAttribute("msg", msg);
		request.setAttribute("url", url);

		return "/view/alert.jsp";
		
	}
	
	// 클래스 수강 view
	@RequestMapping("classContent")
	public String classContent(HttpServletRequest request, HttpServletResponse response) {
		HttpSession session = request.getSession();
		
		String classId = null;
		
		// mypage를 통해서 content 페이지로 왔을 때는 세션에 url에서 classid 받아오고, session에 저장
		if (request.getParameter("class_id") != null) {
			classId = request.getParameter("class_id");
			session.setAttribute("classId", classId);
		} 
		
		// classInfo 화면을 거쳐서 content 페이지로 왔을 때는 세션에 classId가 저장되어 있음
		classId = (String) session.getAttribute("classId");
		String id = (String) session.getAttribute("memid");
		
		Class_ContentDao cd = new Class_ContentDao();
		List<Class_Content> contentList = cd.contentList(classId);
		
		String contentId = request.getParameter("content_id");
		
		if (contentId == null) {
			contentId = contentList.get(0).getContent_Id();
		}
		Class_Content contentOne = cd.contentOne(classId, contentId);
		
		// content화면 완성된 후에 제대로 다시 테스트 할 예정
		
		if (id == null) {
			String msg = "로그인 정보가 없습니다.";
			String url = request.getContextPath() + "/member/login";
			
			request.setAttribute("msg", msg);
			request.setAttribute("url", url);
			
			return "/view/alert.jsp";
		}
		
		int contentNo = 1;
		
		request.setAttribute("contentList", contentList);
		request.setAttribute("content", contentOne);
		request.setAttribute("contentNo", contentNo);
		return "/view/classes/classContent.jsp";
	}
	
	// 클래스 관심등록 process, classInfo.jsp에서 javaScript + ajax로 구현
	@RequestMapping("classFavorite")
	public String classFavorite(HttpServletRequest request, HttpServletResponse response) {
		HttpSession session = request.getSession();
		String id = (String) session.getAttribute("memid");
		String status = "login-null";
		
		String classId = request.getParameter("class_id");
		
		if (classId == null) {
			classId = (String) session.getAttribute("classId");
		}
		
		ClassesDao cd = new ClassesDao();
		
		if (id != null) {
			WishListDao wd = new WishListDao();
			WishList wishOne =  wd.wishOne(id, classId);

			if (wishOne == null) {
				WishList newWish = new WishList(wd.nextSeq(), id, classId);
				int num = wd.insertWish(newWish);
				int cntUp = cd.favoriteCntUp(classId);
				status = "favorite-Cnt-Up";
			} else {
				int num = wd.deleteWish(id, classId);
				int cntDown = cd.favoriteCntDown(classId);
				status = "favorite-Cnt-Down";
			}
			
		}
		
		Classes classone = cd.classOne(classId);
		int favoriteCnt = classone.getFavorite();
		 
		request.setAttribute("favoriteCnt", favoriteCnt);
		request.setAttribute("status", status);
		return "/single/classFavorite.jsp";
	}
	
	// 클래스 수정 view
	@RequestMapping("classUpdate")
	public String classUpdate(HttpServletRequest request, HttpServletResponse response) {
		HttpSession session = request.getSession();
		
		String id = (String) session.getAttribute("memid");
		
		if (id == null) {
			String msg = "로그인 정보가 없습니다.";
			String url = request.getContextPath() + "/member/login";
			
			request.setAttribute("msg", msg);
			request.setAttribute("url", url);
			
			return "/view/alert.jsp";
		} 
		
		String classId = request.getParameter("class_id");
		ClassesDao cd = new ClassesDao();
		Classes classOne = cd.classOne(classId);
		
		Class_ContentDao ccd = new Class_ContentDao();
		
		List<Class_Content> contentList = ccd.contentList(classId);
		
		request.setAttribute("classOne", classOne);
		request.setAttribute("contentList", contentList);
		return "/view/classes/classUpdate.jsp";
	}
	
	// 클래스 수정 process
	@RequestMapping("classUpdatePro")
	public String classUpdatePro(HttpServletRequest request, HttpServletResponse response) {
		
		// 수정가능 요소 : 클래스 소개글, 가격, 썸네일, 각 차시별 제목, 각 차시별 컨텐츠
		// 수정 불가능 : 클래스 아이디, 강사 아이디, 클래스 제목, 카테고리, 타입, 관심수, 등록일

		try {
			request.setCharacterEncoding("utf-8");
		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		// 클래스 객체 생성
		MultipartRequest multi = null;
		
		String path = request.getServletContext().getRealPath("/") + "/contentfile/";
		try {
			multi = new MultipartRequest(request, path, 300 * 1024 * 1024, "UTF-8", new DefaultFileRenamePolicy());
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		String classId = multi.getParameter("class_id");
		Classes updatedClass = new Classes();
		updatedClass.setClass_id(classId);
		updatedClass.setThumbnail(multi.getParameter("thumbnail"));
		updatedClass.setIntro(multi.getParameter("intro"));
		updatedClass.setPrice(Integer.parseInt(multi.getParameter("price")));
		
		ClassesDao cd = new ClassesDao();
		int classUpdateCnt = cd.classUpdate(updatedClass);
		
		Class_ContentDao ccd = new Class_ContentDao();
		
		int listSize = (ccd.contentList(classId)).size();
		
		int contentUpdateCnt = 0;
		
		for (int i = 1; i <= listSize; i++) {
			Class_Content updatedContent = new Class_Content();
			updatedContent.setClass_Id(classId);
			updatedContent.setContent_Id(multi.getParameter("content_id"+i));
			updatedContent.setTitle(multi.getParameter("contentTitle"+i));
			updatedContent.setFile1(multi.getFilesystemName("newFile"+i));
			
			if (updatedContent.getFile1() == null) {
				updatedContent.setFile1(multi.getParameter("file"+i));
			}
			
			
			contentUpdateCnt += ccd.contentUpdate(updatedContent);
			
		}
		
		String msg = "";
		String url = "";
		if (classUpdateCnt > 0 && contentUpdateCnt == listSize) {
			msg = "클래스 수정이 정상적으로 처리되었습니다.";
			url = request.getContextPath() + "/classes/classInfo?class_id=" + classId;
		} else {
			msg = "클래스 수정에 실패하였습니다.";
			url = request.getContextPath() + "/classes/classUpdate?class_id=" + classId;
		}
		
		request.setAttribute("msg", msg);
		request.setAttribute("url", url);
		
		return "/view/alert.jsp";
	}
	
	// 클래스 삭제 process
	@RequestMapping("classDeletePro")
	public String classDelete(HttpServletRequest request, HttpServletResponse response) {
		String classId = request.getParameter("class_id");
		
		ClassesDao cd = new ClassesDao();
		int classDeleteCnt = cd.classDelete(classId);
		
		Class_ContentDao ccd = new Class_ContentDao();
		
		int listSize = (ccd.contentList(classId)).size(); 
		int contentDeleteCnt = ccd.contentDelete(classId);
				
		String msg = "";
		String url = request.getContextPath() + "/member/myPage";
		if (classDeleteCnt > 0 && contentDeleteCnt == listSize) {
			msg = "클래스 삭제가 정상적으로 처리되었습니다.";
		} else {
			msg = "클래스 삭제에 실패하였습니다.";
		}
		
		request.setAttribute("msg", msg);
		request.setAttribute("url", url);
		return "/view/alert.jsp";
	}
}
