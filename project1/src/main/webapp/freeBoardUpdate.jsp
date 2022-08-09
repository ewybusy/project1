<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import = "java.io.PrintWriter" %>
<%@ page import = "bbs.Bbs" %>
<%@ page import = "bbs.BbsDAO" %>
<!DOCTYPE html>
<html>

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

<title>게시글 수정</title>

<body>
<%
	String userID = null;
if (session.getAttribute("userID") != null){
	userID = (String) session.getAttribute("userID");
}
if(userID == null){
	PrintWriter script = response.getWriter();
	script.println("<script>");
	script.println("alert('로그인하세요.')");
	script.println("location.href = 'login.jsp'");
	script.println("</script>"); 
}
int bbsID = 0;
if(request.getParameter("bbsID") != null){
	bbsID = Integer.parseInt(request.getParameter("bbsID"));
}
 if (bbsID == 0){
	PrintWriter script = response.getWriter();
	script.println("<script>");
	script.println("alert('유효하지 않은 글입니다.')");
	script.println("location.href = 'freeBoard.jsp'");
	script.println("</script>"); 
 }
 Bbs bbs  = new BbsDAO().getbbs(bbsID);
 if (!userID.equals(bbs.getuserID())){
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("alert('권한이 없습니다.')");
		script.println("location.href = 'freeBoard.jsp'");
		script.println("</script>"); 
 }
%>

<body>

<section id="book-a-table" class="book-a-table" align="center">

	<form method="post" role="form" class="php-email-form aos-init aos-animate" data-aos="fade-up" data-aos-delay="100" action="freeBoardUpdateAction.jsp?bbsID=<%= bbsID %>">
    <div class="container aos-init aos-animate" data-aos="fade-up"> 
	
        <div class="section-title" >
          <p>게시글 글수정</p>
          </div>

     <tbody>

      <tr>
      	<td><input type="text" class="form-control" placeholder="글 제목" name="bbsTitle" maxlength="50" value="<%= bbs.getbbsTitle() %>"></td>
      </tr>
      
      <tr>
      	<td><textarea class="form-control" placeholder="글 내용을 작성하세요" name="bbsContent" maxlength="2048" style="height: 400px;"><%= bbs.getbbsContent() %></textarea></td> <!-- textarea는 장문의 글을 작성시에 사용 -->
      </tr>

    </tbody>

          
	<input type="submit" class="btn btn-primary pull-right" value="글수정">
         

        </form>
      </div>
    </section>
    
</body>
</html>