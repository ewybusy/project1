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

<title>글쓰기 페이지</title>
</head>
<body>

<section id="book-a-table" class="book-a-table" align="center">
      <div class="container aos-init aos-animate" data-aos="fade-up">

        <div class="section-title" >

          <p>글쓰기</p>
        </div>

        <form action="freeBoardwriteAction.jsp" method="post" role="form" class="php-email-form aos-init aos-animate" data-aos="fade-up" data-aos-delay="100">
          <div class="col" align="center">
            <div class="col-lg-4 col-md-6 form-group">
            
              <input type="text" name="bbsTtitle" class="form-control" id="bbsTitle" placeholder="글 제목" data-rule="minlen:4" data-msg="">
              <div class="validate"></div>
            </div>
            
            <div class="col-lg-4 col-md-6 form-group mt-3 mt-md-0" >
              <input type="text" class="form-control" name="bbsContent" id="bbsContent" placeholder="글내용" data-rule="bbsContent" data-msg="" style="width:430px; height:400px;">
              <div class="validate"></div>
            </div>
    
          <div class="text-center">
          <button type="submit">글쓰기</button>
          </div>
          
          <div class="mb-3">
            <div class="loading">Loading</div>
            <div class="error-message"></div>
            <div class="sent-message">Your booking request was sent. We will call back or send an Email to confirm your reservation. Thank you!</div>
          </div>
          
        </form>

      </div>
    </section>

</body>
</html>