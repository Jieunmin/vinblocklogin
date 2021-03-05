<%@page import="content.contentDAO"%>
<%@page import="content.contentDTO"%>
<%@page import="java.io.PrintWriter"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("UTF-8"); %>
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
	
	//로그인한 사람만 글 수정 기능
	if(userId == null){
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("alert('로그인 해주세요')");
		script.println("location.href='login.jsp'");
		script.println("</script>");
	}
	
	int contentID = 0;
	//컨텐츠 값 호출 후 변환
	if(request.getParameter("contentID")!=null){
		contentID = Integer.parseInt(request.getParameter("contentID"));
	}
	//컨텐츠 값이 없으면 없는 글
	if(contentID==0){
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("alert('유효하지 않은 글입니다.')");
		script.println("location.href='board.jsp'");
		script.println("</script>");
	}
	
	contentDTO ct = new contentDAO().getContent(contentID);
	if(!userId.equals(ct.getUserID())){
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("alert('권한이 없습니다.')");
		script.println("location.href='board.jsp'");
		script.println("</script>");
	}else{
		contentDAO cd = new contentDAO();
		String paramT = request.getParameter("title");
		String paramC = request.getParameter("content");
		System.out.println(paramT+":"+paramC);
		int result = cd.updateContent(contentID, paramT, paramC);
		
		if(result==-1){
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('수정에 실패하였습니다.')");
			script.println("history.back()'");
			script.println("</script>");
		}else{
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('수정되었습니다.')");
			script.println("location.href='board.jsp'");
			script.println("</script>");
		}
	}
%>
</body>
</html>