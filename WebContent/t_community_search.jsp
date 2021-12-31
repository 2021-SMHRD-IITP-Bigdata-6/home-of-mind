<%@page import="com.today.DAO.commDAO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.today.DAO.boardDAO"%>
<%@page import="com.today.DTO.memberDTO"%>
<%@page import="com.today.DTO.commDTO"%>
<%@page import="com.today.DTO.boardDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html class="no-js">
<head>
<meta charset="utf-8" />
<title>🌤 Today</title>
<meta name="description" content="" />
<meta name="viewport" content="width=device-width" />

<link rel="stylesheet"
	href="http://fonts.googleapis.com/css?family=Roboto+Slab:400,700,300,100" />
<link rel="stylesheet"
	href="http://fonts.googleapis.com/css?family=Roboto:400,400italic,300italic,300,500,500italic,700,900" />

<link rel="stylesheet" href="t_css/bootstrap.css" />
<link rel="stylesheet" href="t_css/font-awesome.css" /> 
<link rel="stylesheet" href="t_css/animate.css" />
<link rel="stylesheet" href="t_css/templatemo-misc.css" />
<link rel="stylesheet" href="t_css/templatemo-style.css" />
<script src="js/vendor/modernizr-2.6.1-respond-1.1.0.min.js"></script>

<style>
//
댓글 관련 스타일
	.replymenu a {
	cursor: pointer;
	word-spacing: 10px;
	line-height: 20px;
}

.replymenu {
	display: block;
	word-spacing: 10px;
	line-height: 20px;
	
}

.replyhide {
	display: none;
	word-spacing: 10px;
	line-height: 20px;
}


 td {
	border: 1px solid #3399cc;
	padding: 10px;
	font-size: small;
}

 tr {
	border: 1px solid #3399cc;
	padding: 10px;
	font-size: small;
}



</style>
</head>
<body>
	<%
	boardDTO board_dto = (boardDTO) session.getAttribute("board_dto");
	commDTO comm_dto = (commDTO) session.getAttribute("comm_dto");
	memberDTO dto = (memberDTO) session.getAttribute("dto");

	request.setCharacterEncoding("utf-8");
	String region = request.getParameter("region");
	
	boardDAO board_dao = new boardDAO();
	ArrayList<boardDTO> arr = board_dao.board_to_region(region);

	commDAO comm_dao = new commDAO();
	ArrayList<commDTO> all = comm_dao.comm_selectall();
	int cnt = 0;
	%>
	<!-- 로그인  -->
	<div class="primary-nav-wrapper">
		<nav>
			<ul class="primary-nav">
				<%
					if (dto == null) {
				%>
				<li><a href="login.html"> 로그인 </a></li>
				<%
					} else {
				%>
				<li><a href="LogoutService"> 로그아웃 </a></li>
				<%
					}
				%>


				<li><a href="t_community.jsp"> 공유 게시판 </a></li>
				<li><a href="#articles"> 미션 게시판 </a></li>
				<li><a href="#freebies"> 지도로 보기 </a></li>
			</ul>
		</nav>

		<!-- section-header -->
		<div class="content-wrapper">
			<div class="inner-container container">
				<div class="row">
					<div class="section-header col-md-12">
						<h2>☁︎ Community</h2>
						<span>mission : keywords</span>
					</div>
					<!-- /.section-header -->
				</div>
				<!-- /.row -->
				<div class="row" >
					<div class="blog-masonry masonry-true" >
						<%
							try {
							for (int i = 0; i < arr.size(); i++) {
						%>
						<!-- 1번 게시물 -->
					
						<span class="post-masonry col-md-4 col-sm-6" >
							<div class="blog-thumb" >
								<!-- 사진 출력부-->
								<img src="<%=arr.get(i).getM_article_img()%>" >
								<div class="overlay-b" >
									<div class="overlay-inner">
										<!-- 게시물로 이동-->
										<a class="fa fa-link"
											href="BoardViewService?M_article_seq=<%=arr.get(i).getM_article_seq()%>">
											style="width: 100%; height: 100%;" id="article-image
											has-overlay"></a>
									</div>
								</div>
							</div>
							<div class="blog-body" style="display: list-item;">
								<div class="box-content" >
									<!-- 글 제목-->
									<h3 class="post-title"><%=arr.get(i).getM_article_subject()%>
										<!-- 장소 검색기능-->
										<a href="t_community_search.jsp?region=<%=arr.get(i).getM_article_region()%>">
											<h3 style="margin-top: 10%; margin-bottom: 5%; color: #7AE2DE; font-weight: bold;">#<%=arr.get(i).getM_article_region()%></h3>
										</a>
									</h3>
									<span class="blog-meta">2021-12-12</span>
									<!-- 글 내용-->
									<p class="getM_article_content"><%=arr.get(i).getM_article_content()%></p>

									<!-- 댓글 구현부-->
									<ul>
										<li
											style="position: absolute; right: 10%; color: #7AE2DE; font-weight: bold; list-style: none;"><a
											href='BoardDelService?ARTICLE_SEQ=<%=arr.get(i).getM_article_seq()%>'>삭제</a></li>
										<li
											style="position: absolute; right: 20%; color: #7AE2DE; font-weight: bold; list-style: none;"><a
											href='BoardUpdateService?ARTICLE_SEQ=<%=arr.get(i).getM_article_seq()%>'>수정</a></li>
										<li style=" right: 30%; list-style: none;">
											<div class="like-button-wrapper" >
												<a class="like_button" onclick="func(<%=arr.get(i).getM_article_seq()%>,<%=arr.get(i).getM_article_likes()%>)">
													<i class="like-counter fa fa-heart-o"></i> <span class="like_count"><%=arr.get(i).getM_article_likes()%></span>
												</a>

											</div>
										</li>
									</ul>
									<ul>
										<li class="replymenu" style="margin-left: 2px; list-style: none;" ><a
											href="#" onclick="return false;" style="font-size: 20px">Reply</a>
											<ul class="replyhide">
												<table style="width: 100%; table-layout: fixed; word-break: break-all; border: 1px solid #3399cc;">
													<tr>
														<td width="50%">댓글내용</td>
														<td width="20%">작성자</td>
														<td width="20%">일자</td>
													</tr>
													<%
														cnt = 0;
													for (int j = 0; j < all.size(); j++) {
														if (arr.get(i).getM_article_seq() == all.get(j).getComm_seq()) {
													%>
													<tr>
														<td width="50%"><%=all.get(j).getComm_content()%></td>
														<td width="20%"><%=all.get(j).getMb_id()%></td>
														<td width="20%"><%=all.get(j).getComm_date()%></td>
													</tr>
													<%
														cnt += 1;
													%>
													<%
														}
													}
													%>
												</table>
											</ul></li>
									</ul>
									<ul>
										<li class="article-category" style=" list-style: none;"></li>
										<li class="article-comments"  style=" list-style: none;"><span><i
												class="fa fa-comments"></i><%=cnt%> </span></li>
									</ul>
								</div>
							</div>
						</span>
						<%
							}
						} catch (Exception e) {
						}
						%>
						<!-- /.post-masonry -->
					</div>
					<!-- /.blog-masonry -->
				</div>


				<!-- /.row -->
				<!--
        <div class="row">
          <div class="col-md-12">
            <div class="pagination text-center">
              <ul>
                <li><a href="javascript:void(0)">1</a></li>
                <li><a href="javascript:void(0)" class="active">2</a></li>
                <li><a href="javascript:void(0)">3</a></li>
                <li><a href="javascript:void(0)">4</a></li>
                <li><a href="javascript:void(0)">...</a></li>
                <li><a href="javascript:void(0)">11</a></li>
              </ul>
            </div>
            -->
				<!-- /.pagination -->
			</div>
			<!-- /.col-md-12 -->
		</div>
		<!-- /.row -->
	</div>
	<!-- /.inner-content -->
	</div>
	<!-- /.content-wrapper -->

	<script src="js/vendor/jquery-1.11.0.min.js"></script>
	<script>
      window.jQuery ||
        document.write(
          '<script src="js/vendor/jquery-1.11.0.min.js"><\/script>'
        );
    </script>
	<script src="js/plugins.js"></script>
	<!-- 애니메이션 효과 -->
	<!-- <script src="js/main.js"></script>-->
	<!-- Preloader -->
	<script type="text/javascript">
      //<![CDATA[
      $(window).load(function () {
        // makes sure the whole site is loaded
        $(".loader-item").fadeOut(); // will first fade out the loading animation
        $("#pageloader").delay(350).fadeOut("slow"); // will fade out the white DIV that covers the website.
        $("body").delay(350).css({ "overflow-y": "visible" });
      });
      //]]>
      
		function func(a, b) {
			console.log(a);
			console.log(b);
			var c = $(".like_button").parent().find(".like-counter");
			if(c.hasClass("fa-heart")) {
				var counter = "x";  
			} else if(c.hasClass("fa-heart-o")){
				var counter = "o";
			}
			var article_seq = a; //게시물 번호
			var like_count = b;
			
			var param = {"article_seq" : article_seq,"like_count" : like_count, "counter" : counter };
			$.ajax({
				type : "post", //데이터를 보낼 방식
				url : "LikeService", //데이터를 보낼 url
				data : param, //보낼 데이터

				success : function() { //데이터를 보내는것이 성공했을시 출력되는 메시지
				
				}
			});
		}
	
		// 댓글 펼치기 기능
		$(document).ready(function() {
			$(".replymenu>a").click(function() {
				var submenu = $(this).next("ul");

				// submenu 가 화면상에 보일때는 위로 보드랍게 접고 아니면 아래로 보드랍게 펼치기
				if (submenu.is(":visible")) {
					submenu.slideUp();
				} else {
					submenu.slideDown();
				}
			}).mouseover(function() {
				$(this).next("ul").slideDown();
			});

			// 댓글 초기화후 다시 불러오는 작업
		});
		
		
		// 좋아요 +1 기능  기초 구현
		$(".like_button").on("click", function(){
	        var a = $(this).parent().find(".like-counter");
			var t = $(this).parent().find(".like_count");
			console.log(t.html());
			if(a.hasClass("fa-heart-o")){
				console.log("좋아요 +1")
				// span태그 숫자 변경
		        t.html(1 * t.html() + 1);
				$(a).removeClass("fa-heart-o"),
		        $(a).addClass("fa-heart")
		        
		        console.log(t.html());

		        //db 관련 정보들

		

			}else if(a.hasClass("fa-heart")){
				console.log("좋아요 -1")
				t.html(1 * t.html() - 1);
				$(a).removeClass("fa-heart"),
		        $(a).addClass("fa-heart-o")
		        console.log(t.html());
			}
			
			
		});
	
	var element = document.getElementById(".post-masonry");
	element.removeClass('isotope-item');
      
    </script>
</body>
</html>
