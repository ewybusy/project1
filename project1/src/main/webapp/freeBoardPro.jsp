<%@page import="java.io.PrintWriter"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="bbs.BbsDAO" %>
<%@page import="java.io.PrintWriter" %>

<!DOCTYPE html>
<html>
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

<title>글쓰기 페이지</title>

<body>

<section id="book-a-table" class="book-a-table" align="center">

	 <form method="post" action="freeBoardwriteAction.jsp" role="form" class="php-email-form aos-init aos-animate" data-aos="fade-up" data-aos-delay="100">
      <div class="container aos-init aos-animate" data-aos="fade-up">
	
        <div class="section-title" >
          <p>글쓰기</p>
          </div>

     <tbody>

      <tr>
      	<td><input type="text" class="form-control" placeholder="글 제목" name="bbsTitle" maxlength="50"></td>
      </tr>
      
      <tr>
      	<td><textarea class="form-control" placeholder="글 내용을 작성하세요" name="bbsContent" maxlength="2048" style="height: 400px;"></textarea></td> <!-- textarea는 장문의 글을 작성시에 사용 -->
      </tr>

    </tbody>
          
	 <input type="submit" class="btn btn-primary pull-right" value="글쓰기">
	 
	
         

        </form>
      </div>
    </section>

</body>
</html>