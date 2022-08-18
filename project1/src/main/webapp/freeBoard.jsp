<%@page import="bbs.Bbs"%>
<%@page import="bbs.BbsDAO"%>
<%@page import="java.util.ArrayList"%>
<%@ page import = "java.io.PrintWriter" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<!-- bootstrap -->

<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <meta content="" name="description">
  <meta content="" name="keywords">

  <!-- Google Fonts -->
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Playfair+Display:ital,wght@0,400;0,500;0,600;0,700;1,400;1,500;1,600;1,700|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">

  <!-- Vendor CSS Files -->
  <link href="assets/vendor/animate.css/animate.min.css" rel="stylesheet">
  <link href="assets/vendor/aos/aos.css" rel="stylesheet">
  <link href="assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
  <link href="assets/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
  <link href="assets/vendor/glightbox/css/glightbox.min.css" rel="stylesheet">
  <link href="assets/vendor/swiper/swiper-bundle.min.css" rel="stylesheet">

  <!-- Template Main CSS File -->
  <link href="assets/css/style.css" rel="stylesheet">

  <!-- =======================================================
  * Template Name: Restaurantly - v3.1.0
  * Template URL: https://bootstrapmade.com/restaurantly-restaurant-template/
  * Author: BootstrapMade.com
  * License: https://bootstrapmade.com/license/
  ======================================================== -->
</head>

<meta charset="UTF-8">
<!-- 파비콘(타이틀 왼쪽 그림) -->
<link href="https://media.cdnandroid.com/item_images/920521/imagen-k-league-k-ee-e-0thumb.jpeg" rel="shortcut icon" type="image/x-icon">

<title>자유게시판</title>
</head>
<body>

<section id="book-a-table" class="book-a-table" align="center">
      <div class="container aos-init aos-animate" data-aos="fade-up">
      
<%
	String userID = null;
if(session.getAttribute("userID") != null){
	userID = (String)session.getAttribute("userID");
}
int pageNumber = 1; // 기본 1페이지
if(request.getParameter("pageNumber") != null){
	pageNumber = Integer.parseInt(request.getParameter("pageNumber"));
}
%>

<!-- 자유게시판 전체적인 틀 생성 -->
<div class="section-title" >
	<form action="freeBoardPro.jsp" method="post" role="form" class="php-email-form aos-init aos-animate" data-aos="fade-up" data-aos-delay="100">
          <p style="color:#CDA45E;">자유게시판</p>
        
      <table class="table table-hover">
      <thead>
      <tr>
      <th style="color:#CDA45E;">번호</th>
      <th style="color:#CDA45E;">제목</th>
      <th style="color:#CDA45E;">글쓴이</th>
      <th style="color:#CDA45E;">작성일</th>
      </tr>
      </thead>

<%
	BbsDAO bbsDAO = new BbsDAO();
	ArrayList<Bbs> list = bbsDAO.getList(pageNumber);
	for(int i=0; i<list.size(); i++){
%>
 <tr style="color:white;">
 		
 		<!-- 글번호 -->
       <td style="color:#CDA45E;"><%= list.get(i).getbbsID() %></td>
       
       <!-- 제목을 눌렀을때 해당 게시물로 이동, 해당번호에 맞는 페이지 나올 수 있게 -->
       <!-- 글제목 -->
       <td><a href="freeBoardView.jsp?bbsID=<%= list.get(i).getbbsID() %>"><%= list.get(i).getbbsTitle().replaceAll(" ", "&nbsp;").replaceAll("<", "&lt;").replaceAll(">", "&lt;") %></a></td>
       
       <!-- 글쓴이 -->
       <td><%= list.get(i).getuserID() %></td>
       
       <!-- 작성시간 --> 
       <td><%= list.get(i).getbbsDate().substring(0, 11) + list.get(i).getbbsDate().substring(11, 13) + "시" + list.get(i).getbbsDate().substring(14, 16) + "분"%></td> 
       </tr>
   <%
       }
   %>
    </tbody>
   
</table>


 <!-- 페이지 이동 -->
<%
   if(pageNumber!=1) { //현재 페이지가 있는지, 버튼 생성	  
%>
  <a href = "freeBoard.jsp?pageNumber=<%=pageNumber-1 %>" class="btn btn-success btn-arraw-left"> 
      이전
  </a>
<%
  } if(bbsDAO.nextPage(pageNumber+1)) { //다음 페이지가 존재하는지
%>
  <a href = "freeBoard.jsp?pageNumber=<%=pageNumber+1 %>" class="btn btn-success btn-arraw-left">
      다음                
  </a>
<% 
  }
%>

<hr />

<a href="index.jsp">메인이동</a>
<a href="freeBoardPro.jsp">글쓰기</a> 
        </form>
    </section>

</body>
</html>