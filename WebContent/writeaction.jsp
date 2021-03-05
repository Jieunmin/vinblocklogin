<%@page import="content.contentDAO"%>
<%@page import="java.io.PrintWriter"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
request.setCharacterEncoding("UTF-8");
%>
<jsp:useBean id="content" class="content.contentDTO" scope="page"></jsp:useBean>
<jsp:setProperty property="title" name="content" />
<jsp:setProperty property="content" name="content" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	//세션 체크
	String userId = null;
	if (session.getAttribute("userId") != null){
		userId = (String)session.getAttribute("userId");
	}
	//로그인한 사람만 글 쓰기 기능
	if(userId == null){
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("alert('로그인 해주세요')");
		script.println("location.href='login.jsp'");
		script.println("</script>");
	}else{
	//정상 입력
		contentDAO cd = new contentDAO();
		int result = cd.writeContent(userId, content.getTitle(), content.getTitle());
		
		if(result==-1){
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('글쓰기에 실패하였습니다.')");
			script.println("history.back()'");
			script.println("</script>");
		}else{
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('글이 등록되었습니다.')");
			script.println("location.href='board.jsp'");
			script.println("</script>");
		}
	}
%>

</body>
</html>