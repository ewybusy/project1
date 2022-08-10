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

  <!-- Favicons -->
  <link href="assets/img/favicon.png" rel="icon">
  <link href="assets/img/apple-touch-icon.png" rel="apple-touch-icon">

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

<title>회원탈퇴페이지</title>
</head>
<body>

<%
	request.setCharacterEncoding("UTF-8");
	String id = (String)session.getAttribute("userID");
	String pw = (String)session.getAttribute("userPassword");
%>

<section id="book-a-table" class="book-a-table" align="center">
      <div class="container aos-init aos-animate" data-aos="fade-up">

        <div class="section-title" >
          <p>회 원 탈 퇴</p>
        </div>

        <form action="memberDropAction.jsp" method="post" role="form" class="php-email-form aos-init aos-animate" data-aos="fade-up" data-aos-delay="100">
          <div class="col" align="center">
            <div class="col-lg-4 col-md-6 form-group">
            
              <input type="text" name="userID" class="form-control" id="userID" placeholder="아이디" data-rule="minlen:4" data-msg="">
              <div class="validate"></div>
            </div>
            
            <div class="col-lg-4 col-md-6 form-group mt-3 mt-md-0" >
              <input type="password" class="form-control" name="userPassword" id="userPassword" placeholder="비밀번호" data-rule="email" data-msg="">
              <div class="validate"></div>
            </div>

          <div class="text-center"><button type="submit">회원탈퇴</button></div>
        </form>

      </div>
    </section>

</body>
</html>