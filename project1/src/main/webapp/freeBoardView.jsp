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
<title>게시판 내용</title>

<body>

<%
	String userID = null;
if (session.getAttribute("userID") != null){
	userID = (String) session.getAttribute("userID");
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
Bbs bbs = new BbsDAO().getbbs(bbsID);
%>

<div class="container">
<div class="row">
</div>
<table class="table table-striped" style="text-align:center; border: 1px solid #cda45e; td: #cda45e;" > 
<tbody>
<!-- Google Fonts -->


	<tr>
	<th colspan="2" style="background-color: eeeeee; text-align: center; font-size:40px; color:#cda45e;">게시판 글보기</th> 
	</tr>

<tr>
<td style="width: 20%; font-size:20px; color:#CDA45E;;" >글 제목</td>
<td colspan="2" style="font-size:20px; color:white;" ><%= bbs.getbbsTitle().replaceAll(" ", "&nbsp;").replaceAll("<", "&lt;").replaceAll(">", "&lt;") %></td>
</tr>

<tr>
<td style="font-size:20px; color:#CDA45E;;">작성자</td>
<td colspan="2" style="font-size:20px; color:white;"><%= bbs.getuserID() %></td>
</tr>

<tr>
<td style="font-size:20px; color:#CDA45E;;">작성일자</td>
<td colspan="2" style="font-size:20px; color:white;"><%= bbs.getbbsDate().substring(0, 11) + bbs.getbbsDate().substring(11, 13) + "시" + bbs.getbbsDate().substring(14, 16) + "분" %></td>
</tr>

<tr>
<td style="font-size:20px; color:#CDA45E;;">내용</td>
<td colspan="2" style="height: 500px; font-size:20px; color:white;"><%= bbs.getbbsContent().replaceAll(" ", "&nbsp;").replaceAll("<", "&lt;").replaceAll(">", "&lt;").replaceAll("\n", "<br>") %></td>
</tr>

</tbody>
</table>

<a href="freeBoard.jsp" class="btn btn-primary " style="font-size : 20px;">목록</a>
<%
	if(userID != null && userID.equals(bbs.getuserID())){
%>
		<a href="freeBoardUpdate.jsp?bbsID=<%= bbsID %>" class="btn btn-primary" style="font-size : 20px;">수정</a>
		<a onclick="return confirm('정말로 삭제하시겠습니까?')" href="freeBoardDeleteAction.jsp?bbsID=<%= bbsID %>" class="btn btn-primary" style="font-size : 20px;">삭제</a>
		<%
	}
		%>
</div>
</tbody>



</body>
</html>