<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="<%=request.getContextPath() %>/resource/style/classList.css">
<meta charset="UTF-8">
</head>
<body style="padding-top: 70px;">
	<div class="cl-wrapper">
		<div class="class_header">
			<h2 id ="font">클래스</h2>
			<form class="mtl-form" action="<%=request.getContextPath()%>/classes/classList">
				<input class="form-control form-content" type="text" placeholder="검색하기" name="search_keyword">
				<button id="cl-btn" type="submit">검색</button>
			</form>	
		</div>
		<div class="bottom-line">	
<!-- 			<div class="search">

			</div> -->
		</div>
		<div class="main_content">
			<div class="categori quick_menu">
				<ul id="cl-subnav" class="submenu">
					<li><a href="<%=request.getContextPath()%>/classes/classList?category_id=cooking">운동</a></li>
					<li><a href="#">크리에이티브</a></li>
					<li><a href="#">디자인</a></li>
					<li><a href="#">개발/프로그래밍</a></li>
					<li><a href="#">요리/베이킹</a></li>
					<li><a href="#">금융/재태크</a></li>
					<li><a href="#">운동</a></li>
					<li><a href="#">크리에이티브</a></li>
					<li><a href="#">디자인</a></li>
					<li><a href="#">개발/프로그래밍</a></li>
					<li><a href="#">요리/베이킹</a></li>
					<li><a href="#">금융/재태크</a></li>
					<li><a href="#">디자인</a></li>
					<li><a href="#">개발/프로그래밍</a></li>
					<li><a href="#">요리/베이킹</a></li>
					<li><a href="#">금융/재태크</a></li>
				</ul>			
			</div>
			
<!-- 무한스크롤때문에 눈에보이는 12개는 무조건 구현해야함, 백앤드구현시 아래 스크립트 138행(addContent.innerHTML~~)도 구현요망 -->
			<div class="class_List">
			<section>	
			    <c:forEach var="c" items="${classList}">
				<div class="box">
					<a href="<%=request.getContextPath()%>/classes/classInfo?class_id=${c.class_id}">
						<div class="cc-cc"><img src="<%=request.getContextPath()%>/thumbnail/${c.thumbnail}" onerror="none" style="width: 100%; height: 100%;"></div>
						<div class="cc-title">${c.title }</div>
					</a>	
				</div>	
				</c:forEach> 
				  
				<div class="box">
					<a href="<%=request.getContextPath()%>/classes/classInfo?=">
						<div class="cc-cc"><img src="${imgage}" onerror="none"></div>
						<div class="cc-title">[단기간] 포토샵 잘하는법 단기간에 섭렵하기 진짜 고수되는법...</div>
					</a>	
				</div>	
				<div class="box">
					<a href="<%=request.getContextPath()%>/classes/classInfo?=">
						<div class="cc-cc"><img src="${imgage}" onerror="none"></div>
						<div class="cc-title">[단기간] 포토샵 잘하는법 단기간에 섭렵하기 진짜 고수되는법...</div>
					</a>	
				</div>	
				<div class="box">
					<a href="<%=request.getContextPath()%>/classes/classInfo?=">
						<div class="cc-cc"><img src="${imgage}" onerror="none"></div>
						<div class="cc-title">[단기간] 포토샵 잘하는법 단기간에 섭렵하기 진짜 고수되는법...</div>
					</a>	
				</div>	
				<div class="box">
					<a href="<%=request.getContextPath()%>/classes/classInfo?=">
						<div class="cc-cc"><img src="${imgage}" onerror="none"></div>
						<div class="cc-title">[단기간] 포토샵 잘하는법 단기간에 섭렵하기 진짜 고수되는법...</div>
					</a>	
				</div>	
				<div class="box">
					<a href="<%=request.getContextPath()%>/classes/classInfo?=">
						<div class="cc-cc"><img src="${imgage}" onerror="none"></div>
						<div class="cc-title">[단기간] 포토샵 잘하는법 단기간에 섭렵하기 진짜 고수되는법...</div>
					</a>	
				</div>	
				<div class="box">
					<a href="<%=request.getContextPath()%>/classes/classInfo?=">
						<div class="cc-cc"><img src="${imgage}" onerror="none"></div>
						<div class="cc-title">[단기간] 포토샵 잘하는법 단기간에 섭렵하기 진짜 고수되는법...</div>
					</a>	
				</div>	
				<div class="box">
					<a href="<%=request.getContextPath()%>/classes/classInfo?=">
						<div class="cc-cc"><img src="${imgage}" onerror="none"></div>
						<div class="cc-title">[단기간] 포토샵 잘하는법 단기간에 섭렵하기 진짜 고수되는법...</div>
					</a>	
				</div>	
				<div class="box">
					<a href="<%=request.getContextPath()%>/classes/classInfo?=">
						<div class="cc-cc"><img src="${imgage}" onerror="none"></div>
						<div class="cc-title">[단기간] 포토샵 잘하는법 단기간에 섭렵하기 진짜 고수되는법...</div>
					</a>	
				</div>				
				<div class="box">
					<a href="<%=request.getContextPath()%>/classes/classInfo?=">
						<div class="cc-cc"><img src="${imgage}" onerror="none"></div>
						<div class="cc-title">[단기간] 포토샵 잘하는법 단기간에 섭렵하기 진짜 고수되는법...</div>
					</a>	
				</div>	
				<div class="box">
					<a href="<%=request.getContextPath()%>/classes/classInfo?=">
						<div class="cc-cc"><img src="${imgage}" onerror="none"></div>
						<div class="cc-title">[단기간] 포토샵 잘하는법 단기간에 섭렵하기 진짜 고수되는법...</div>
					</a>	
				</div>	
				<div class="box">
					<a href="<%=request.getContextPath()%>/classes/classInfo?=">
						<div class="cc-cc"><img src="${imgage}" onerror="none"></div>
						<div class="cc-title">[단기간] 포토샵 잘하는법 단기간에 섭렵하기 진짜 고수되는법...</div>
					</a>	
				</div>
		</section>						
			</div>
		
			
			<!-- classList 테스트용 코드입니다! <c:forEach var = "classes" items="${classList}">${classes}</c:forEach>--> 		
		</div>
	</div>
	
<script>
/*무한스크롤*/
window.onscroll = function(e) {
  console.log(window.innerHeight , window.scrollY,document.body.offsetHeight)
  if((window.innerHeight + window.scrollY)+1000 >= document.body.offsetHeight) { 
    setTimeout(function(){
	  var addContent = document.createElement("div");
      addContent.classList.add("box")
      addContent.innerHTML = '<a href="<%=request.getContextPath()%>/classes/classInfo?="><div class="cc-cc"><img src="${imgage}" onerror="none"></div><div class="cc-title">[단기간] 포토샵 잘하는법 단기간에 섭렵하기 진짜 고수되는법...</div></a>'
      
    document.querySelector('section').appendChild(addContent);
    })  
  }
}

/* 스크롤바 */
$(function(){
    var $win = $(window);
    var top = $(window).scrollTop(); // 현재 스크롤바의 위치값을 반환합니다.
 
    /*사용자 설정 값 시작*/
    var speed          = "fast";     // 따라다닐 속도 : "slow", "normal", or "fast" or numeric(단위:msec)
    var easing         = 'swing'; // 따라다니는 방법 기본 두가지 linear, swing
    var $layer         = $('.quick_menu'); // 레이어 셀렉팅
    var layerTopOffset = "10px";   // 레이어 높이 상한선, 단위:px
    $layer.css('position', 'absolute');
    /*사용자 설정 값 끝*/
 
    // 스크롤 바를 내린 상태에서 리프레시 했을 경우를 위해
    if (top > 0 )
        $win.scrollTop(layerTopOffset+top);
    else
        $win.scrollTop(0);
 
    //스크롤이벤트가 발생하면
    $(window).scroll(function(){
        yPosition = $win.scrollTop() + 80;
        if (yPosition < 0)
        {
            yPosition = 0;
        }
        $layer.animate({"top":yPosition }, {duration:speed, easing:easing, queue:false});
    });
});
</script>	
</body>
</html>