<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="user.UserDAO" %>
<%@page import="user.User" %>
<%@page import="java.io.PrintWriter" %>
<% request.setCharacterEncoding("UTF-8"); %>
<jsp:useBean id="user" class="user.User" scope="page" />
<jsp:setProperty name="user" property="userID" />
<jsp:setProperty name="user" property="userPassword" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!-- 파비콘(타이틀 왼쪽 그림) -->
<link href="https://media.cdnandroid.com/item_images/920521/imagen-k-league-k-ee-e-0thumb.jpeg" rel="shortcut icon" type="image/x-icon">
<title>회원가입</title>
</head>
<body>


<%
String userID=null;
if(session.getAttribute("userID") != null){
userID = (String) session.getAttribute("userID"); 
}

if (userID != null){
	PrintWriter script = response.getWriter();
	script.println("<script>");
	script.println("alert('이미 로그인 되어있습니다.')");
	script.println("location.href = 'index.jsp'");
	script.println("</script>");
}
	if(user.getUserID() == null || user.getUserPassword() == null){ // ID와 PW 둘 중 하나라도 빈칸일시
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("alert('입력이 안 된 사항이 있습니다.')");
		script.println("history.back()"); // 이전 페이지로 회원을 돌려 보낸다.
		script.println("</script>");
		
	} else{
		UserDAO userDAO = new UserDAO();
		int result = userDAO.join(user);
		if (result == -1){
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('이미 존재하는 아이디입니다.')");
			script.println("history.back()"); // 이전 페이지로 회원을 돌려 보낸다.
			script.println("</script>");
		}
		else  {
			session.setAttribute("userID", user.getUserID()); // 세션
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('회원가입 완료! 메인화면으로 이동합니다.')");
			script.println("location.href = 'index.jsp'");
			script.println("</script>");
		}

	}

%>
	



</body>
</html>


